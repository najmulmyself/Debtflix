import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/network_info.dart';
import '../../../../core/storage/secure_storage.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/types/unit.dart';
import '../entities/user.dart';
import 'auth_repository.dart';

@injectable
class AuthRepositoryImpl implements AuthRepository {
  final Dio _dio;
  final SecureStorage _secureStorage;
  final NetworkInfo _networkInfo;

  AuthRepositoryImpl(this._dio, this._secureStorage, this._networkInfo);

  @override
  Future<Either<Failure, User>> login(String email, String password) async {
    if (!await _networkInfo.isConnected) {
      return Left(Failure.networkError('No internet connection'));
    }

    try {
      final response = await _dio.post(
        '/auth/login',
        data: {
          'email': email,
          'password': password,
        },
        options: Options(
          headers: {"Content-Type": "application/json"},
        ),
      );

      if (response.statusCode == 200 && response.data != null) {
        final user = User.fromJson(response.data as Map<String, dynamic>);
        await _secureStorage.saveToken(user.id.toString());
        return Right(user);
      } else if (response.statusCode == 401) {
        return Left(Failure.unauthorized('Invalid credentials'));
      } else if (response.statusCode == 429) {
        return Left(Failure.tooManyRequests('Too many requests'));
      } else {
        return Left(Failure.serverError('Server error'));
      }
    } catch (e) {
      return Left(Failure.networkError(e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> register(String email, String password, String name) async {
    if (!await _networkInfo.isConnected) {
      return Left(Failure.networkError('No internet connection'));
    }

    try {
      final response = await _dio.post(
        '/auth/register',
        data: {
          'email': email,
          'password': password,
          'name': name,
        },
        options: Options(
          headers: {"Content-Type": "application/json"},
        ),
      );

      if (response.statusCode == 201 && response.data != null) {
        final user = User.fromJson(response.data as Map<String, dynamic>);
        await _secureStorage.saveToken(user.id.toString());
        return Right(user);
      } else if (response.statusCode == 409) {
        return Left(Failure.conflict('Email already exists'));
      } else if (response.statusCode == 422) {
        return Left(Failure.validationError('Invalid data'));
      } else {
        return Left(Failure.serverError('Registration failed'));
      }
    } catch (e) {
      return Left(Failure.networkError(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> logout() async {
    try {
      final token = await _secureStorage.getToken();
      if (token != null) {
        await _secureStorage.removeToken();
        return const Right(unit);
      } else {
        return Left(Failure.notAuthenticated('No token found'));
      }
    } catch (e) {
      return Left(Failure.networkError(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> refreshToken() async {
    try {
      final token = await _secureStorage.getToken();
      if (token == null) {
        return Left(Failure.notAuthenticated('No token found'));
      }

      final response = await _dio.post(
        '/auth/refresh',
        data: {
          'refresh_token': token,
        },
        options: Options(
          headers: {"Content-Type": "application/json"},
        ),
      );

      if (response.statusCode == 200 && response.data != null) {
        final newToken = response.data['access_token'] as String;
        await _secureStorage.saveToken(newToken);
        return Right(newToken);
      } else {
        return Left(Failure.serverError('Token refresh failed'));
      }
    } catch (e) {
      return Left(Failure.networkError(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> isEmailVerified() async {
    try {
      final token = await _secureStorage.getToken();
      if (token == null) {
        return Left(Failure.notAuthenticated('No token found'));
      }

      // In a real app, this would make an API call
      return const Right(false);
    } catch (e) {
      return Left(Failure.networkError(e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> updateUser(User user) async {
    try {
      final token = await _secureStorage.getToken();
      if (token == null) {
        return Left(Failure.notAuthenticated('No token found'));
      }

      final response = await _dio.put(
        '/auth/users/me',
        data: {
          'name': user.name,
          'avatar': user.avatar,
          'currency': user.currency,
          'language': user.language,
          'timezone': user.timezone,
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          },
        ),
      );

      if (response.statusCode == 200) {
        final updatedUser = User.fromJson(response.data as Map<String, dynamic>);
        return Right(updatedUser);
      } else {
        return Left(Failure.serverError('Profile update failed'));
      }
    } catch (e) {
      return Left(Failure.networkError(e.toString()));
    }
  }
}