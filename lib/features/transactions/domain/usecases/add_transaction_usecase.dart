import 'package:either_dart/either.dart';

import '../repositories/transaction_repository.dart';
import '../../../../core/errors/failures.dart';

class AddTransactionUseCase {
  final TransactionRepository repository;

  AddTransactionUseCase(this.repository);

  Future<Either<Failure, dynamic>> call({
    required Map<String, dynamic> transactionData,
  }) async {
    try {
      final result = await repository.addTransaction(transactionData);
      return result;
    } catch (e) {
      return Left(Failure.databaseError('Failed to add transaction: $e'));
    }
  }
}