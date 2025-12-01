import 'package:either_dart/either.dart';

import '../entities/user.dart';
import '../repositories/auth_repository.dart';
import '../../../../core/errors/failures.dart';

class RegisterUseCase {
  final AuthRepository _repository;

  RegisterUseCase(this._repository);

  Future<Either<Failure, User>> call(String email, String password, String name) async {
    try {
      return await _repository.register(email, password, name);
    } catch (e) {
      return Left(Failure.serverError(e.toString()));
    }
  }
}