import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/transaction.dart';
import '../../domain/repositories/transaction_repository.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/network/network_info.dart';
import '../datasources/transaction_local_datasource.dart';
import '../datasources/transaction_remote_datasource.dart';

@injectable
class TransactionRepositoryImpl implements TransactionRepository {
  final TransactionLocalDataSource localDataSource;
  final TransactionRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  TransactionRepositoryImpl(
    this.localDataSource,
    this.remoteDataSource,
    this.networkInfo,
  );

  @override
  Future<Either<Failure, List<Transaction>>> getTransactions({
    String? accountId,
    String? categoryId,
    String? type,
    DateTime? startDate,
    DateTime? endDate,
    int? limit,
    int? offset,
  }) async {
    try {
      if (await networkInfo.isConnected) {
        final remoteResult = await remoteDataSource.getTransactions(
          accountId: accountId,
          categoryId: categoryId,
          type: type,
          startDate: startDate,
          endDate: endDate,
          limit: limit,
          offset: offset,
        );

        await remoteResult.fold(
          (failure) async => await localDataSource.cacheTransactions([]),
          (transactions) async => await localDataSource.cacheTransactions(transactions),
        );

        return remoteResult;
      } else {
        return await localDataSource.getTransactions(
          accountId: accountId,
          categoryId: categoryId,
          type: type,
          startDate: startDate,
          endDate: endDate,
          limit: limit,
          offset: offset,
        );
      }
    } catch (e) {
      return Left(Failure.databaseError('Failed to get transactions: $e'));
    }
  }

  @override
  Future<Either<Failure, Transaction>> getTransactionById(int id) async {
    try {
      if (await networkInfo.isConnected) {
        final remoteResult = await remoteDataSource.getTransactionById(id);

        await remoteResult.fold(
          (failure) async {},
          (transaction) async => await localDataSource.cacheTransaction(transaction),
        );

        return remoteResult;
      } else {
        return await localDataSource.getTransactionById(id);
      }
    } catch (e) {
      return Left(Failure.databaseError('Failed to get transaction: $e'));
    }
  }

  @override
  Future<Either<Failure, Transaction>> createTransaction({
    required double amount,
    required String description,
    required String type,
    required String categoryId,
    required String accountId,
    String? notes,
    Map<String, dynamic>? metadata,
  }) async {
    try {
      if (await networkInfo.isConnected) {
        final remoteResult = await remoteDataSource.createTransaction(
          amount: amount,
          description: description,
          type: type,
          categoryId: categoryId,
          accountId: accountId,
          notes: notes,
          metadata: metadata,
        );

        await remoteResult.fold(
          (failure) async {},
          (transaction) async => await localDataSource.cacheTransaction(transaction),
        );

        return remoteResult;
      } else {
        // Create locally and sync later
        final transactionData = TransactionData(
          amount: amount,
          description: description,
          type: type,
          categoryId: categoryId,
          accountId: accountId,
          date: DateTime.now(),
          notes: notes,
          metadata: metadata?.toString(),
        );

        final result = await localDataSource.createTransaction(transactionData);

        return result.map((transactionData) => Transaction(
          id: transactionData.id,
          amount: transactionData.amount,
          description: transactionData.description,
          type: transactionData.type,
          categoryId: transactionData.categoryId,
          accountId: transactionData.accountId,
          date: transactionData.date,
          createdAt: transactionData.createdAt,
          updatedAt: transactionData.updatedAt,
          notes: transactionData.notes,
          metadata: transactionData.metadata != null
              ? <String, dynamic>{} : null,
        ));
      }
    } catch (e) {
      return Left(Failure.databaseError('Failed to create transaction: $e'));
    }
  }

  @override
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
  }) async {
    try {
      if (await networkInfo.isConnected) {
        final remoteResult = await remoteDataSource.updateTransaction(
          id,
          amount: amount,
          description: description,
          type: type,
          categoryId: categoryId,
          accountId: accountId,
          date: date,
          notes: notes,
          metadata: metadata,
        );

        await remoteResult.fold(
          (failure) async {},
          (transaction) async => await localDataSource.cacheTransaction(transaction),
        );

        return remoteResult;
      } else {
        // Update locally and sync later
        final result = await localDataSource.updateTransaction(
          id,
          amount: amount,
          description: description,
          type: type,
          categoryId: categoryId,
          accountId: accountId,
          date: date,
          notes: notes,
          metadata: metadata?.toString(),
        );

        return result.map((transactionData) => Transaction(
          id: transactionData.id,
          amount: transactionData.amount,
          description: transactionData.description,
          type: transactionData.type,
          categoryId: transactionData.categoryId,
          accountId: transactionData.accountId,
          date: transactionData.date,
          createdAt: transactionData.createdAt,
          updatedAt: transactionData.updatedAt,
          notes: transactionData.notes,
          metadata: transactionData.metadata != null
              ? <String, dynamic>{} : null,
        ));
      }
    } catch (e) {
      return Left(Failure.databaseError('Failed to update transaction: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> deleteTransaction(int id) async {
    try {
      if (await networkInfo.isConnected) {
        final remoteResult = await remoteDataSource.deleteTransaction(id);

        await remoteResult.fold(
          (failure) async {},
          (_) async => await localDataSource.deleteTransaction(id),
        );

        return remoteResult;
      } else {
        return await localDataSource.deleteTransaction(id);
      }
    } catch (e) {
      return Left(Failure.databaseError('Failed to delete transaction: $e'));
    }
  }

  @override
  Future<Either<Failure, double>> getTotalBalance({
    String? accountId,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    try {
      final localResult = await localDataSource.getTotalBalance(
        accountId: accountId,
        startDate: startDate,
        endDate: endDate,
      );

      return localResult;
    } catch (e) {
      return Left(Failure.databaseError('Failed to get total balance: $e'));
    }
  }

  @override
  Future<Either<Failure, Map<String, double>>> getIncomeVsExpense({
    String? accountId,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    try {
      final localResult = await localDataSource.getIncomeVsExpense(
        accountId: accountId,
        startDate: startDate,
        endDate: endDate,
      );

      return localResult;
    } catch (e) {
      return Left(Failure.databaseError('Failed to get income vs expense: $e'));
    }
  }

  @override
  Future<Either<Failure, Map<String, double>>> getSpendingByCategory({
    String? accountId,
    String? type,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    try {
      final localResult = await localDataSource.getSpendingByCategory(
        accountId: accountId,
        type: type,
        startDate: startDate,
        endDate: endDate,
      );

      return localResult;
    } catch (e) {
      return Left(Failure.databaseError('Failed to get spending by category: $e'));
    }
  }
}