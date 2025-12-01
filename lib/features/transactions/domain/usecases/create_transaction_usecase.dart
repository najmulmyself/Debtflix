import 'package:either_dart/either.dart';

import '../entities/transaction.dart';
import '../repositories/transaction_repository.dart';
import '../../../../core/errors/failures.dart';

class CreateTransactionUseCase {
  final TransactionRepository repository;

  CreateTransactionUseCase(this.repository);

  Future<Either<Failure, Transaction>> call(
    double amount,
    String description,
    String type,
    String categoryId,
    String accountId, {
    String? notes,
    Map<String, dynamic>? metadata,
  }) async {
    return await repository.createTransaction(
      amount: amount,
      description: description,
      type: type,
      categoryId: categoryId,
      accountId: accountId,
      notes: notes,
      metadata: metadata,
    );
  }
}