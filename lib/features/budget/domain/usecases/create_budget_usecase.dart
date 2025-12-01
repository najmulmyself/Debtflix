import 'package:either_dart/either.dart';

import '../entities/budget.dart';
import '../repositories/budget_repository.dart';
import '../../../../core/errors/failures.dart';

class CreateBudgetUseCase {
  final BudgetRepository repository;

  CreateBudgetUseCase(this.repository);

  Future<Either<Failure, Budget>> call(
    String name,
    double amount,
    DateTime startDate,
    DateTime endDate, {
    String? categoryId,
    String? notes,
    String? currency,
  }) async {
    // Validate inputs
    if (name.trim().isEmpty) {
      return Left(Failure.validationError('Budget name cannot be empty'));
    }
    if (amount <= 0) {
      return Left(Failure.validationError('Budget amount must be greater than 0'));
    }
    if (endDate.isBefore(startDate)) {
      return Left(Failure.validationError('End date must be after start date'));
    }

    final budget = Budget(
      id: DateTime.now().millisecondsSinceEpoch ~/ 1000, // Simple ID generation
      name: name.trim(),
      amount: amount,
      spent: 0.0,
      currency: currency ?? 'USD',
      startDate: startDate,
      endDate: endDate,
      categoryId: categoryId,
      notes: notes?.trim(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    try {
      final result = await repository.createBudget(
        name: budget.name,
        amount: budget.amount,
        startDate: budget.startDate,
        endDate: budget.endDate,
        categoryId: budget.categoryId,
        notes: budget.notes,
        currency: budget.currency,
      );

      return result;
    } catch (e) {
      return Left(Failure.databaseError('Failed to create budget: $e'));
    }
  }
}