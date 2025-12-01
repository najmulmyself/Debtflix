import 'package:either_dart/either.dart';

import '../../domain/entities/transaction.dart';
import '../../../../core/errors/failures.dart';

abstract class TransactionRemoteDataSource {
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

  Future<Either<Failure, Transaction>> createTransaction({
    required double amount,
    required String description,
    required String type,
    required String categoryId,
    required String accountId,
    String? notes,
    Map<String, dynamic>? metadata,
  });

  Future<Either<Failure, Transaction>> updateTransaction(
    int id, {
    double? amount,
    String? description,
    String? type,
    String? categoryId,
    String? accountId,
    DateTime? date,
    String? notes,
    Map<String, dynamic>? metadata,
  });

  Future<Either<Failure, void>> deleteTransaction(int id);
}