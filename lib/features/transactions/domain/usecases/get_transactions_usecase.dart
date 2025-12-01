import 'package:either_dart/either.dart';

import '../repositories/transaction_repository.dart';
import '../../../../core/errors/failures.dart';

class GetTransactionsUseCase {
  final TransactionRepository repository;

  GetTransactionsUseCase(this.repository);

  Future<Either<Failure, List<dynamic>>> call() async {
    try {
      final result = await repository.getTransactions();
      return result;
    } catch (e) {
      return Left(Failure.databaseError('Failed to load transactions: $e'));
    }
  }
}