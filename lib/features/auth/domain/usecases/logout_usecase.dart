import 'package:dartz/dartz.dart';

import '../entities/user.dart';
import '../repositories/auth_repository.dart';
import '../failures/auth_failure.dart';

class LogoutUseCase {
  final AuthRepository _repository;

  LogoutUseCase(this._repository);

  Future<Either<AuthFailure, Unit>> call() async {
    try {
      final token = await _secureStorage.getToken();
      if (token == null) {
        return const Left(AuthFailure.notAuthenticated('No token found'));
      }

      final result = await _repository.logout();
      return result;
    } catch (e) {
      return const Left(AuthFailure.networkError(e.toString()));
    }
  }
}