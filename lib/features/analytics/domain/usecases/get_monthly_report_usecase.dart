import 'package:either_dart/either.dart';

import '../repositories/analytics_repository.dart';
import '../../../../core/errors/failures.dart';

class GetMonthlyReportUseCase {
  final AnalyticsRepository repository;

  GetMonthlyReportUseCase(this.repository);

  Future<Either<Failure, Map<String, dynamic>>> call({
    DateTime? month,
  }) async {
    try {
      final now = month ?? DateTime.now();
      final result = await repository.getMonthlyReport(
        year: now.year,
        month: now.month,
      );

      return result;
    } catch (e) {
      return Left(Failure.databaseError('Failed to load monthly report: $e'));
    }
  }
}