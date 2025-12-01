import 'package:either_dart/either.dart';

import '../repositories/budget_repository.dart';
import '../../../../core/errors/failures.dart';

class DeleteBudgetUseCase {
  final BudgetRepository repository;

  DeleteBudgetUseCase(this.repository);

  Future<Either<Failure, bool>> call({required int id}) async {
    try {
      final result = await repository.deleteBudget(id);
      return result;
    } catch (e) {
      return Left(Failure.databaseError('Failed to delete budget: $e'));
    }
  }
}