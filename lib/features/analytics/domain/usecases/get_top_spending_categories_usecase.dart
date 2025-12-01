import 'package:either_dart/either.dart';

import '../repositories/analytics_repository.dart';
import '../../../../core/errors/failures.dart';

class GetTopSpendingCategoriesUseCase {
  final AnalyticsRepository repository;

  GetTopSpendingCategoriesUseCase(this.repository);

  Future<Either<Failure, List<Map<String, dynamic>>>> call({
    DateTime? startDate,
    DateTime? endDate,
    int? limit,
  }) async {
    try {
      final result = await repository.getTopSpendingCategories(
        startDate: startDate,
        endDate: endDate,
        limit: limit,
      );

      return result;
    } catch (e) {
      return Left(Failure.databaseError('Failed to load top spending categories: $e'));
    }
  }
}