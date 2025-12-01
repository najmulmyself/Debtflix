import 'package:either_dart/either.dart';

import '../entities/expense_summary.dart';
import '../repositories/analytics_repository.dart';
import '../../../../core/errors/failures.dart';

class GetExpenseSummariesUseCase {
  final AnalyticsRepository repository;

  GetExpenseSummariesUseCase(this.repository);

  Future<Either<Failure, List<ExpenseSummary>>> call({
    String? categoryId,
    DateTime? startDate,
    DateTime? endDate,
    int? limit,
  }) async {
    try {
      final result = await repository.getExpenseSummaries(
        categoryId: categoryId,
        startDate: startDate,
        endDate: endDate,
        limit: limit,
      );

      return result;
    } catch (e) {
      return Left(Failure.databaseError('Failed to load expense summaries: $e'));
    }
  }
}