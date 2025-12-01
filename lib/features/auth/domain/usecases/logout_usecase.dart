import 'package:either_dart/either.dart';

import '../entities/user.dart';
import '../repositories/auth_repository.dart';
import '../failures/auth_failure.dart';

class LogoutUseCase {
  final AuthRepository _repository;

  LogoutUseCase(this._repository);

  Future<Either<AuthFailure, void>> call() async {
    try {
      // Remove secure storage dependency since we're using mock implementation
      // final token = await _secureStorage.getToken();
      // if (token == null) {
      //   return const Left(AuthFailure.notAuthenticated('No token found'));
      // }

      final result = await _repository.logout();
      return result;
    } catch (e) {
      return Left(AuthFailure.networkError(e.toString()));
    }
  }
}