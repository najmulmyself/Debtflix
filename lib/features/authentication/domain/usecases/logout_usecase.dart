import 'package:either_dart/either.dart';

import '../repositories/auth_repository.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/types/unit.dart';

class LogoutUseCase {
  final AuthRepository _repository;

  LogoutUseCase(this._repository);

  Future<Either<Failure, Unit>> call() async {
    try {
      return await _repository.logout();
    } catch (e) {
      return Left(Failure.networkError(e.toString()));
    }
  }
}