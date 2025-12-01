import 'package:either_dart/either.dart';

import '../../domain/entities/transaction.dart';
import '../../../../core/errors/failures.dart';

abstract class TransactionLocalDataSource {
  Future<Either<Failure, List<Transaction>>> getTransactions({
    String? accountId,
    String? categoryId,
    String? type,
    DateTime? startDate,
    DateTime? endDate,
    int? limit,
    int? offset,
  });

  Future<Either<Failure, Transaction>> getTransactionById(int id);

  Future<Either<Failure, Transaction>> createTransaction(
    Map<String, dynamic> transactionData,
  );

  Future<Either<Failure, Transaction>> updateTransaction(
    int id, {
    double? amount,
    String? description,
    String? type,
    String? categoryId,
    String? accountId,
    DateTime? date,
    String? notes,
    String? metadata,
  });

  Future<Either<Failure, void>> deleteTransaction(int id);

  Future<Either<Failure, double>> getTotalBalance({
    String? accountId,
    DateTime? startDate,
    DateTime? endDate,
  });

  Future<Either<Failure, Map<String, double>>> getIncomeVsExpense({
    String? accountId,
    DateTime? startDate,
    DateTime? endDate,
  });

  Future<Either<Failure, Map<String, double>>> getSpendingByCategory({
    String? accountId,
    String? type,
    DateTime? startDate,
    DateTime? endDate,
  });

  Future<void> cacheTransaction(Transaction transaction);
  Future<void> cacheTransactions(List<Transaction> transactions);
}