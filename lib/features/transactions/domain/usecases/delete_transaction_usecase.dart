import 'package:either_dart/either.dart';

import '../repositories/transaction_repository.dart';
import '../../../../core/errors/failures.dart';

class DeleteTransactionUseCase {
  final TransactionRepository repository;

  DeleteTransactionUseCase(this.repository);

  Future<Either<Failure, bool>> call({required int id}) async {
    try {
      final result = await repository.deleteTransaction(id);
      return result;
    } catch (e) {
      return Left(Failure.databaseError('Failed to delete transaction: $e'));
    }
  }
}