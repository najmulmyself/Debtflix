import 'package:either_dart/either.dart';

import '../entities/expense_summary.dart';
import '../repositories/analytics_repository.dart';
import '../../../../core/errors/failures.dart';

class GetSpendingOverTimeUseCase {
  final AnalyticsRepository repository;

  GetSpendingOverTimeUseCase(this.repository);

  Future<Either<Failure, List<ExpenseSummary>>> call({
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    try {
      final result = await repository.getSpendingOverTime(
        startDate: startDate,
        endDate: endDate,
      );

      return result;
    } catch (e) {
      return Left(Failure.databaseError('Failed to load spending over time: $e'));
    }
  }
}