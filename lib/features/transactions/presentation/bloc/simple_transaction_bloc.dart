import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/transaction.dart';
import '../../domain/usecases/create_transaction_usecase.dart';
import '../../../../core/errors/failures.dart';

abstract class TransactionEvent {}

class LoadTransactions extends TransactionEvent {
  final String? accountId;
  final String? categoryId;
  final String? type;
  final DateTime? startDate;
  final DateTime? endDate;

  LoadTransactions({
    this.accountId,
    this.categoryId,
    this.type,
    this.startDate,
    this.endDate,
  });
}

class CreateTransaction extends TransactionEvent {
  final double amount;
  final String description;
  final String type;
  final String categoryId;
  final String accountId;
  final String? notes;
  final Map<String, dynamic>? metadata;

  CreateTransaction({
    required this.amount,
    required this.description,
    required this.type,
    required this.categoryId,
    required this.accountId,
    this.notes,
    this.metadata,
  });
}

class UpdateTransaction extends TransactionEvent {
  final int id;
  final double? amount;
  final String? description;
  final String? type;
  final String? categoryId;
  final String? accountId;
  final DateTime? date;
  final String? notes;
  final Map<String, dynamic>? metadata;

  UpdateTransaction({
    required this.id,
    this.amount,
    this.description,
    this.type,
    this.categoryId,
    this.accountId,
    this.date,
    this.notes,
    this.metadata,
  });
}

class DeleteTransaction extends TransactionEvent {
  final int id;

  DeleteTransaction(this.id);
}

class ClearError extends TransactionEvent {}

enum TransactionStatus {
  initial,
  loading,
  loaded,
  creating,
  updating,
  deleting,
  error,
}

class TransactionState {
  final List<Transaction> transactions;
  final TransactionStatus status;
  final bool hasReachedMax;
  final Failure? failure;
  final Transaction? selectedTransaction;
  final int? currentPage;
  final int limit;

  const TransactionState({
    this.transactions = const [],
    this.status = TransactionStatus.initial,
    this.hasReachedMax = false,
    this.failure,
    this.selectedTransaction,
    this.currentPage,
    this.limit = 20,
  });

  TransactionState copyWith({
    List<Transaction>? transactions,
    TransactionStatus? status,
    bool? hasReachedMax,
    Failure? failure,
    Transaction? selectedTransaction,
    int? currentPage,
    int? limit,
  }) {
    return TransactionState(
      transactions: transactions ?? this.transactions,
      status: status ?? this.status,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      failure: failure,
      selectedTransaction: selectedTransaction ?? this.selectedTransaction,
      currentPage: currentPage ?? this.currentPage,
      limit: limit ?? this.limit,
    );
  }
}

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final CreateTransactionUseCase _createTransactionUseCase;

  TransactionBloc(this._createTransactionUseCase)
      : super(const TransactionState()) {
    on<LoadTransactions>(_mapLoadTransactionsToState);
    on<CreateTransaction>(_mapCreateTransactionToState);
    on<UpdateTransaction>(_mapUpdateTransactionToState);
    on<DeleteTransaction>(_mapDeleteTransactionToState);
    on<ClearError>(_mapClearErrorToState);
  }

  Future<void> _mapLoadTransactionsToState(
    LoadTransactions event,
    Emitter<TransactionState> emit,
  ) async {
    if (event.accountId == null &&
        event.categoryId == null &&
        event.type == null &&
        event.startDate == null &&
        event.endDate == null &&
        state.transactions.isNotEmpty) {
      return;
    }

    emit(state.copyWith(
      status: TransactionStatus.loading,
      failure: null,
    ));

    try {
      // TODO: Implement GetTransactionsUseCase and inject it
      // For now, emit empty list
      emit(state.copyWith(
        status: TransactionStatus.loaded,
        transactions: <Transaction>[],
        hasReachedMax: true,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: TransactionStatus.error,
        failure: Failure.unknown(e.toString()),
      ));
    }
  }

  Future<void> _mapCreateTransactionToState(
    CreateTransaction event,
    Emitter<TransactionState> emit,
  ) async {
    emit(state.copyWith(
      status: TransactionStatus.creating,
      failure: null,
    ));

    try {
      final result = await _createTransactionUseCase(
        event.amount,
        event.description,
        event.type,
        event.categoryId,
        event.accountId,
        notes: event.notes,
        metadata: event.metadata,
      );

      result.fold(
        (failure) => emit(state.copyWith(
          status: TransactionStatus.error,
          failure: failure,
        )),
        (transaction) => emit(state.copyWith(
          status: TransactionStatus.loaded,
          transactions: [transaction, ...state.transactions],
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        status: TransactionStatus.error,
        failure: Failure.unknown(e.toString()),
      ));
    }
  }

  Future<void> _mapUpdateTransactionToState(
    UpdateTransaction event,
    Emitter<TransactionState> emit,
  ) async {
    emit(state.copyWith(
      status: TransactionStatus.updating,
      failure: null,
    ));

    try {
      // TODO: Implement UpdateTransactionUseCase
      // For now, just update locally
      final updatedTransactions = state.transactions.map((t) {
        if (t.id == event.id) {
          return Transaction(
            id: t.id,
            amount: event.amount ?? t.amount,
            description: event.description ?? t.description,
            type: event.type ?? t.type,
            categoryId: event.categoryId ?? t.categoryId,
            accountId: event.accountId ?? t.accountId,
            date: event.date ?? t.date,
            createdAt: t.createdAt,
            updatedAt: DateTime.now(),
            notes: event.notes ?? t.notes,
            metadata: event.metadata ?? t.metadata,
          );
        }
        return t;
      }).toList();

      emit(state.copyWith(
        status: TransactionStatus.loaded,
        transactions: updatedTransactions.cast<Transaction>(),
      ));
    } catch (e) {
      emit(state.copyWith(
        status: TransactionStatus.error,
        failure: Failure.unknown(e.toString()),
      ));
    }
  }

  Future<void> _mapDeleteTransactionToState(
    DeleteTransaction event,
    Emitter<TransactionState> emit,
  ) async {
    emit(state.copyWith(
      status: TransactionStatus.deleting,
      failure: null,
    ));

    try {
      // TODO: Implement DeleteTransactionUseCase
      // For now, just remove locally
      final updatedTransactions = state.transactions
          .where((t) => t.id != event.id)
          .toList();

      emit(state.copyWith(
        status: TransactionStatus.loaded,
        transactions: updatedTransactions,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: TransactionStatus.error,
        failure: Failure.unknown(e.toString()),
      ));
    }
  }

  Future<void> _mapClearErrorToState(
    ClearError event,
    Emitter<TransactionState> emit,
  ) async {
    emit(state.copyWith(
      failure: null,
    ));
  }
}