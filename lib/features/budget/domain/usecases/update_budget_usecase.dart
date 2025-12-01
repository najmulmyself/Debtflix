import 'package:either_dart/either.dart';

import '../entities/budget.dart';
import '../repositories/budget_repository.dart';
import '../../../../core/errors/failures.dart';

class UpdateBudgetUseCase {
  final BudgetRepository repository;

  UpdateBudgetUseCase(this.repository);

  Future<Either<Failure, Budget>> call({
    required int id,
    String? name,
    double? amount,
    DateTime? startDate,
    DateTime? endDate,
    String? categoryId,
    String? notes,
    String? currency,
  }) async {
    // Validate inputs
    if (name?.trim().isEmpty == true) {
      return Left(Failure.validationError('Budget name cannot be empty'));
    }
    if (amount != null && amount <= 0) {
      return Left(Failure.validationError('Budget amount must be greater than 0'));
    }
    if (startDate != null && endDate != null && endDate.isBefore(startDate)) {
      return Left(Failure.validationError('End date must be after start date'));
    }

    try {
      final result = await repository.updateBudget(
        id: id,
        name: name,
        amount: amount,
        startDate: startDate,
        endDate: endDate,
        categoryId: categoryId,
        notes: notes,
        currency: currency,
      );

      return result;
    } catch (e) {
      return Left(Failure.databaseError('Failed to update budget: $e'));
    }
  }
}