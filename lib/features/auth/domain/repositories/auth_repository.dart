import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../entities/user.dart';
import '../failures/auth_failure.dart';

abstract class AuthRepository {
  Future<Either<AuthFailure, User>> login(String email, String password);
  Future<Either<AuthFailure, User>> register(String email, String password, String name);
  Future<Either<AuthFailure, void>> logout();
  Future<Either<AuthFailure, String>> refreshToken();
  Future<Either<AuthFailure, bool>> isEmailVerified();
  Future<Either<AuthFailure, User>> updateUser(User user);
}

@injectable
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl();

  @override
  Future<Either<AuthFailure, User>> login(String email, String password) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(seconds: 1));

      // Simple validation
      if (email.contains('@') && password.length >= 6) {
        // Mock user data
        final user = User(
          id: 1,
          email: email,
          name: email.split('@')[0],
        );
        return Right(user);
      } else {
        return Left(AuthFailure.validationError('Invalid email or password'));
      }
    } catch (e) {
      return Left(AuthFailure.networkError(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, User>> register(String email, String password, String name) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(seconds: 1));

      // Simple validation
      if (email.contains('@') && password.length >= 6 && name.isNotEmpty) {
        // Mock user data
        final user = User(
          id: 1,
          email: email,
          name: name,
        );
        return Right(user);
      } else {
        return Left(AuthFailure.validationError('Invalid registration data'));
      }
    } catch (e) {
      return Left(AuthFailure.networkError(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, void>> logout() async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 500));
      return const Right(null);
    } catch (e) {
      return Left(AuthFailure.networkError(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, String>> refreshToken() async {
    try {
      // Simulate token refresh
      await Future.delayed(const Duration(milliseconds: 300));
      return Right('new_refresh_token');
    } catch (e) {
      return Left(AuthFailure.networkError(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, bool>> isEmailVerified() async {
    try {
      // Simulate check
      await Future.delayed(const Duration(milliseconds: 200));
      return const Right(true);
    } catch (e) {
      return Left(AuthFailure.networkError(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, User>> updateUser(User user) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(seconds: 1));

      // Mock updated user
      final updatedUser = user.copyWith(
        name: user.name ?? 'Updated User',
      );
      return Right(updatedUser);
    } catch (e) {
      return Left(AuthFailure.networkError(e.toString()));
    }
  }
}