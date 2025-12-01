import 'package:either_dart/either.dart';

import '../entities/expense_summary.dart';
import '../../../../core/errors/failures.dart';

abstract class AnalyticsRepository {
  Future<Either<Failure, List<ExpenseSummary>>> getExpenseSummaries({
    String? categoryId,
    DateTime? startDate,
    DateTime? endDate,
    int? limit,
  });

  Future<Either<Failure, List<ExpenseSummary>>> getSpendingByCategory({
    String? categoryId,
    DateTime? startDate,
    DateTime? endDate,
  });

  Future<Either<Failure, List<ExpenseSummary>>> getSpendingOverTime({
    DateTime? startDate,
    DateTime? endDate,
  });

  Future<Either<Failure, Map<String, double>>> getTopSpendingCategories({
    DateTime? startDate,
    DateTime? endDate,
    int? limit,
  });

  Future<Either<Failure, Map<String, dynamic>>> getMonthlyReport({
    String? categoryId,
    int year,
    int month,
  });
}