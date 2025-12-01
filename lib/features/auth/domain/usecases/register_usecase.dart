import 'package:either_dart/either.dart';

import '../entities/user.dart';
import '../repositories/auth_repository.dart';
import '../failures/auth_failure.dart';

class RegisterUseCase {
  final AuthRepository _repository;

  RegisterUseCase(this._repository);

  Future<Either<AuthFailure, User>> call(String email, String password, String name) async {
    try {
      return _repository.register(email, password, name);
    } catch (e) {
      return Left(AuthFailure.networkError(e.toString()));
    }
  }
}