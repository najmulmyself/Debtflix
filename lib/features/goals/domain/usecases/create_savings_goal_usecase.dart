import 'package:either_dart/either.dart';

import '../repositories/savings_goal_repository.dart';
import '../entities/savings_goal.dart';
import '../../../../core/errors/failures.dart';

class CreateSavingsGoalUseCase {
  final SavingsGoalRepository repository;

  CreateSavingsGoalUseCase(this.repository);

  Future<Either<Failure, SavingsGoal>> call({
    required String name,
    required double targetAmount,
    required DateTime targetDate,
    String? categoryId,
    String? notes,
    String? currency,
    bool isCompleted = false,
  }) async {
    try {
      final result = await repository.createSavingsGoal(
        name: name,
        targetAmount: targetAmount,
        targetDate: targetDate,
        categoryId: categoryId,
        notes: notes,
        currency: currency,
        isCompleted: isCompleted,
      );

      return result;
    } catch (e) {
      return Left(Failure.databaseError('Failed to create savings goal: $e'));
    }
  }
}