import 'package:either_dart/either.dart';

import '../entities/user.dart';
import '../repositories/auth_repository.dart';
import '../../../../core/errors/failures.dart';

class LoginUseCase {
  final AuthRepository _repository;

  LoginUseCase(this._repository);

  Future<Either<Failure, User>> call(String email, String password) async {
    try {
      return await _repository.login(email, password);
    } catch (e) {
      return Left(Failure.networkError(e.toString()));
    }
  }
}