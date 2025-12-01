import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/user.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> login(String email, String password);
  Future<Either<Failure, User>> register(String email, String password, String name);
  Future<Either<Failure, Unit>> logout();
  Future<Either<Failure, String>> refreshToken();
  Future<Either<Failure, bool>> isEmailVerified();
  Future<Either<Failure, User>> updateUser(User user);
}

@injectable
class AuthRepositoryImpl implements AuthRepository {
  final Dio _dio;
  final SecureStorage _secureStorage;
  final NetworkInfo _networkInfo;

  AuthRepositoryImpl(this._dio, this._secureStorage, this._networkInfo);

  @override
  Future<Either<Failure, User>> login(String email, String password) async {
    try {
      final response = await _dio.post(
        '/auth/login',
        data: {
          'email': email,
          'password': password,
        },
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      if (response.statusCode == 200 && response.data != null) {
        final user = User.fromJson(response.data);
        await _secureStorage.saveToken(user.id.toString());
        return Right(user);
      } else if (response.statusCode == 401) {
        return const Left(AuthFailure.unauthorized('Invalid credentials'));
      } else if (response.statusCode == 429) {
        return const Left(AuthFailure.tooManyRequests('Too many requests'));
      } else {
        return const Left(AuthFailure.serverError('Server error'));
      }
    } catch (e) {
      return const Left(AuthFailure.networkError(e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> register(String email, String password, String name) async {
    try {
      final response = await _dio.post(
        '/auth/register',
        data: {
          'email': email,
          'password': password,
          'name': name,
        },
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      if (response.statusCode == 201 && response.data != null) {
        final user = User.fromJson(response.data);
        await _secureStorage.saveToken(user.id.toString());
        return Right(user);
      } else if (response.statusCode == 409) {
        return const Left(AuthFailure.conflict('Email already exists'));
      } else if (response.statusCode == 422) {
        return const Left(AuthFailure.validationError('Invalid data'));
      } else {
        return const Left(AuthFailure.serverError('Registration failed'));
      }
    } catch (e) {
      return const Left(AuthFailure.networkError(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> logout() async {
    try {
      final response = await _dio.post(
        '/auth/logout',
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      if (response.statusCode == 200) {
        await _secureStorage.removeToken();
        return const Right(unit);
      } else {
        return const Left(AuthFailure.serverError('Logout failed'));
      }
    } catch (e) {
      return const Left(AuthFailure.networkError(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> refreshToken() async {
    try {
      final token = await _secureStorage.getToken();
      if (token == null) {
        return const Left(AuthFailure.notAuthenticated('No token found'));
      }

      final response = await _dio.post(
        '/auth/refresh',
        data: {
          'refresh_token': token,
        },
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      if (response.statusCode == 200 && response.data != null) {
        final newToken = response.data['access_token'] as String;
        await _secureStorage.saveToken(newToken);
        return Right(newToken);
      } else {
        return const Left(AuthFailure.serverError('Token refresh failed'));
      }
    } catch (e) {
      return const Left(AuthFailure.networkError(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> isEmailVerified() async {
    try {
      final token = await _secureStorage.getToken();
      if (token == null) {
        return const Left(AuthFailure.notAuthenticated('No token found'));
      }

      // In a real app, this would make an API call
      // For demo purposes, we'll simulate it
      return const Right(true);
    } catch (e) {
      return const Left(AuthFailure.networkError(e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> updateUser(User user) async {
    try {
      final token = await _secureStorage.getToken();
      if (token == null) {
        return const Left(AuthFailure.notAuthenticated('No token found'));
      }

      final response = await _dio.put(
        '/auth/users/me',
        data: {
          'name': user.name,
          'avatar': user.avatar,
          'currency': user.currency,
          'language': user.language,
          'timezone': user.timezone,
          'email_verified': true,
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          },
        ),
      );

      if (response.statusCode == 200 && response.data != null) {
        final updatedUser = User.fromJson(response.data);
        return Right(updatedUser);
      } else {
        return const Left(AuthFailure.serverError('Profile update failed'));
      }
    } catch (e) {
      return const Left(AuthFailure.networkError(e.toString()));
    }
  }
}