import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/transaction.dart';
import '../../domain/usecases/create_transaction_usecase.dart';
import '../../../../core/errors/failures.dart';

part 'transaction_bloc.freezed.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.loadTransactions({
    String? accountId,
    String? categoryId,
    String? type,
    DateTime? startDate,
    DateTime? endDate,
  }) = _LoadTransactions;

  const factory TransactionEvent.createTransaction({
    required double amount,
    required String description,
    required String type,
    required String categoryId,
    required String accountId,
    String? notes,
    Map<String, dynamic>? metadata,
  }) = _CreateTransaction;

  const factory TransactionEvent.updateTransaction({
    required int id,
    double? amount,
    String? description,
    String? type,
    String? categoryId,
    String? accountId,
    DateTime? date,
    String? notes,
    Map<String, dynamic>? metadata,
  }) = _UpdateTransaction;

  const factory TransactionEvent.deleteTransaction(int id) = _DeleteTransaction;

  const factory TransactionEvent.clearError() = _ClearError;
}

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState({
    @Default([]) List<Transaction> transactions,
    @Default(TransactionStatus.initial) TransactionStatus status,
    @Default(false) bool hasReachedMax,
    Failure? failure,
    Transaction? selectedTransaction,
    int? currentPage,
    @Default(20) int limit,
  }) = _TransactionState;
}

enum TransactionStatus {
  initial,
  loading,
  loaded,
  creating,
  updating,
  deleting,
  error,
}

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final CreateTransactionUseCase _createTransactionUseCase;

  TransactionBloc(this._createTransactionUseCase)
      : super(const TransactionState()) {
    on<TransactionEvent>((event, emit) {
      switch (event) {
        case TransactionEvent.loadTransactions():
          return _mapLoadTransactionsToState(event, emit);

        case TransactionEvent.createTransaction():
          return _mapCreateTransactionToState(event, emit);

        case TransactionEvent.updateTransaction():
          return _mapUpdateTransactionToState(event, emit);

        case TransactionEvent.deleteTransaction():
          return _mapDeleteTransactionToState(event, emit);

        case TransactionEvent.clearError():
          return _mapClearErrorToState(event, emit);
      }
    });
  }

  Future<void> _mapLoadTransactionsToState(
    TransactionEvent event,
    Emitter<TransactionState> emit,
  ) async {
    final loadEvent = event as TransactionEvent.loadTransactions;

    if (loadEvent.accountId == null &&
        loadEvent.categoryId == null &&
        loadEvent.type == null &&
        loadEvent.startDate == null &&
        loadEvent.endDate == null &&
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
        transactions: [],
        hasReachedMax: true,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: TransactionStatus.error,
        failure: Failure.databaseError(e.toString()),
      ));
    }
  }

  Future<void> _mapCreateTransactionToState(
    TransactionEvent event,
    Emitter<TransactionState> emit,
  ) async {
    final createEvent = event as TransactionEvent.createTransaction;

    emit(state.copyWith(
      status: TransactionStatus.creating,
      failure: null,
    ));

    try {
      final result = await _createTransactionUseCase(
        createEvent.amount,
        createEvent.description,
        createEvent.type,
        createEvent.categoryId,
        createEvent.accountId,
        notes: createEvent.notes,
        metadata: createEvent.metadata,
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
        failure: Failure.databaseError(e.toString()),
      ));
    }
  }

  Future<void> _mapUpdateTransactionToState(
    TransactionEvent event,
    Emitter<TransactionState> emit,
  ) async {
    final updateEvent = event as TransactionEvent.updateTransaction;

    emit(state.copyWith(
      status: TransactionStatus.updating,
      failure: null,
    ));

    try {
      // TODO: Implement UpdateTransactionUseCase
      // For now, just update locally
      final updatedTransactions = state.transactions.map((t) {
        if (t.id == updateEvent.id) {
          return t.copyWith(
            amount: updateEvent.amount,
            description: updateEvent.description,
            type: updateEvent.type,
            categoryId: updateEvent.categoryId,
            accountId: updateEvent.accountId,
            date: updateEvent.date,
            notes: updateEvent.notes,
          );
        }
        return t;
      }).toList();

      emit(state.copyWith(
        status: TransactionStatus.loaded,
        transactions: updatedTransactions,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: TransactionStatus.error,
        failure: Failure.databaseError(e.toString()),
      ));
    }
  }

  Future<void> _mapDeleteTransactionToState(
    TransactionEvent event,
    Emitter<TransactionState> emit,
  ) async {
    final deleteEvent = event as TransactionEvent.deleteTransaction;

    emit(state.copyWith(
      status: TransactionStatus.deleting,
      failure: null,
    ));

    try {
      // TODO: Implement DeleteTransactionUseCase
      // For now, just remove locally
      final updatedTransactions = state.transactions
          .where((t) => t.id != deleteEvent.id)
          .toList();

      emit(state.copyWith(
        status: TransactionStatus.loaded,
        transactions: updatedTransactions,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: TransactionStatus.error,
        failure: Failure.databaseError(e.toString()),
      ));
    }
  }

  Future<void> _mapClearErrorToState(
    TransactionEvent event,
    Emitter<TransactionState> emit,
  ) async {
    emit(state.copyWith(
      failure: null,
    ));
  }
}