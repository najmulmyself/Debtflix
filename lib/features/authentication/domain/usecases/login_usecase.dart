import 'package:dartz/dartz.dart';

import '../entities/user.dart';
import '../repositories/auth_repository.dart';
import '../failures/auth_failure.dart';

class LoginUseCase {
  final AuthRepository _repository;

  LoginUseCase(this._repository);

  Future<Either<AuthFailure, User>> call(String email, String password) async {
    try {
      return await _repository.login(email, password);
    } catch (e) {
      return Left(AuthFailure.networkError(e.toString()));
    }
  }
}