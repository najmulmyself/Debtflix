import 'package:either_dart/either.dart';

import '../entities/budget.dart';
import '../../../../core/errors/failures.dart';

abstract class BudgetRepository {
  Future<Either<Failure, List<Budget>>> getBudgets({
    String? categoryId,
    DateTime? startDate,
    DateTime? endDate,
    int? limit,
    int? offset,
  });

  Future<Either<Failure, Budget>> getBudgetById(int id);

  Future<Either<Failure, Budget>> createBudget({
    required String name,
    required double amount,
    required DateTime startDate,
    required DateTime endDate,
    String? categoryId,
    String? notes,
    String? currency,
  });

  Future<Either<Failure, Budget>> updateBudget(
    int id, {
    String? name,
    double? amount,
    DateTime? startDate,
    DateTime? endDate,
    String? categoryId,
    String? notes,
    String? currency,
  });

  Future<Either<Failure, void>> deleteBudget(int id);

  Future<Either<Failure, List<Budget>>> getActiveBudgets({
    String? categoryId,
    DateTime? startDate,
    DateTime? endDate,
    int? limit,
    int? offset,
  });

  Future<Either<Failure, Map<String, double>>> getBudgetSpendingByCategory({
    String? categoryId,
    DateTime? startDate,
    DateTime? endDate,
  });

  Future<Either<Failure, double>> getTotalBudgetAmount({
    String? categoryId,
    DateTime? startDate,
    DateTime? endDate,
  });

  Future<Either<Failure, double>> getTotalSpentAmount({
    String? categoryId,
    DateTime? startDate,
    DateTime? endDate,
  });
}