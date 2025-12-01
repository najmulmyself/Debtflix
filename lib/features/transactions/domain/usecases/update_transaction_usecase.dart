import 'package:either_dart/either.dart';

import '../repositories/transaction_repository.dart';
import '../../../../core/errors/failures.dart';

class UpdateTransactionUseCase {
  final TransactionRepository repository;

  UpdateTransactionUseCase(this.repository);

  Future<Either<Failure, dynamic>> call({
    required int id,
    required Map<String, dynamic> transactionData,
  }) async {
    try {
      final result = await repository.updateTransaction(id, transactionData);
      return result;
    } catch (e) {
      return Left(Failure.databaseError('Failed to update transaction: $e'));
    }
  }
}