import 'package:either_dart/either.dart';

import '../entities/expense_summary.dart';
import '../repositories/analytics_repository.dart';
import '../../../../core/errors/failures.dart';

class GetSpendingOverTimeUseCase {
  final AnalyticsRepository repository;

  GetSpendingOverTimeUseCase(this.repository);

  Future<Either<Failure, List<String>>> call({
    String? categoryId,
  }) async {
    try {
      final result = await repository.getSpendingOverTime(
        categoryId: categoryId,
      );

      return result;
    } catch (e) {
      return Left(Failure.databaseError('Failed to load spending over time: $e'));
    }
  }
}