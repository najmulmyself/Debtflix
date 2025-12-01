import 'package:either_dart/either.dart';

import '../entities/budget.dart';
import '../repositories/budget_repository.dart';
import '../../../../core/errors/failures.dart';

class GetBudgetsUseCase {
  final BudgetRepository repository;

  GetBudgetsUseCase(this.repository);

  Future<Either<Failure, List<Budget>>> call({
    String? categoryId,
    DateTime? startDate,
    DateTime? endDate,
    int? limit,
    int? offset,
  }) async {
    try {
      final result = await repository.getBudgets(
        categoryId: categoryId,
        startDate: startDate,
        endDate: endDate,
        limit: limit,
        offset: offset,
      );

      return result;
    } catch (e) {
      return Left(Failure.databaseError('Failed to load budgets: $e'));
    }
  }
}