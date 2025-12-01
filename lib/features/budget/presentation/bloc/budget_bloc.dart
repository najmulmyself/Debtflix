import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/budget.dart';
import '../../domain/usecases/create_budget_usecase.dart';
import '../../domain/usecases/get_budgets_usecase.dart';
import '../../domain/usecases/update_budget_usecase.dart';
import '../../domain/usecases/delete_budget_usecase.dart';
import '../../../../core/errors/failures.dart';

part 'budget_bloc.freezed.dart';

@freezed
class BudgetEvent with _$BudgetEvent {
  const factory BudgetEvent.loadBudgets({
    String? categoryId,
    DateTime? startDate,
    DateTime? endDate,
  }) = _LoadBudgets;

  const factory BudgetEvent.createBudget({
    required String name,
    required double amount,
    required DateTime startDate,
    required DateTime endDate,
    String? categoryId,
    String? notes,
    String? currency,
  }) = _CreateBudget;

  const factory BudgetEvent.updateBudget({
    required int id,
    String? name,
    double? amount,
    DateTime? startDate,
    DateTime? endDate,
    String? categoryId,
    String? notes,
    String? currency,
  }) = _UpdateBudget;

  const factory BudgetEvent.deleteBudget(int id) = _DeleteBudget;

  const factory BudgetEvent.clearError() = _ClearError;
}

@freezed
class BudgetState with _$BudgetState {
  const factory BudgetState({
    @Default([]) List<Budget> budgets,
    @Default(false) bool isLoading,
    @Default(false) bool hasReachedMax,
    @Default(0) int currentPage,
    @Default(20) int limit,
    Failure? failure,
    Budget? selectedBudget,
  }) = _BudgetState;

  const factory BudgetState.initial() = _BudgetState;

  const factory BudgetState.loading() = _BudgetState.copyWith(
        isLoading: true,
        failure: null,
      );

  const factory BudgetState.loaded({
    required List<Budget> budgets,
    bool hasReachedMax = false,
    int currentPage = 0,
    int limit = 20,
  }) = _BudgetState;

  const factory BudgetState.error(Failure failure) = _BudgetState.copyWith(
        isLoading: false,
        failure: failure,
      );

  const factory BudgetState.action({
    required BudgetState state,
    Budget? selectedBudget,
  }) = _BudgetState;
}

class BudgetBloc extends Bloc<BudgetEvent, BudgetState> {
  final CreateBudgetUseCase _createBudgetUseCase;
  final GetBudgetsUseCase _getBudgetsUseCase;
  final UpdateBudgetUseCase _updateBudgetUseCase;
  final DeleteBudgetUseCase _deleteBudgetUseCase;

  BudgetBloc({
    required this._createBudgetUseCase,
    required this._getBudgetsUseCase,
    required this._updateBudgetUseCase,
    required this._deleteBudgetUseCase,
  }) : super(const BudgetState.initial()) {
    on<BudgetEvent>((event, emit) {
      switch (event) {
        case BudgetEvent.loadBudgets():
          return _mapLoadBudgetsToState(event, emit);

        case BudgetEvent.createBudget():
          return _mapCreateBudgetToState(event, emit);

        case BudgetEvent.updateBudget():
          return _mapUpdateBudgetToState(event, emit);

        case BudgetEvent.deleteBudget():
          return _mapDeleteBudgetToState(event, emit);

        case BudgetEvent.clearError():
          return _mapClearErrorToState(emit);
      }
    }
  }

  Future<void> _mapLoadBudgetsToState(
    BudgetEvent event,
    Emitter<BudgetState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, failure: null));

    try {
      final result = await _getBudgetsUseCase(
        categoryId: event.categoryId,
        startDate: event.startDate,
        endDate: event.endDate,
        limit: state.limit,
        offset: state.currentPage * state.limit,
      );

      result.fold(
        (failure) => emit(state.copyWith(
          isLoading: false,
          failure: failure,
        )),
        (budgets) => emit(state.copyWith(
          isLoading: false,
          budgets: budgets,
          hasReachedMax: budgets.length < state.limit,
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        failure: Failure.databaseError('Failed to load budgets: $e'),
      ));
    }
  }

  Future<void> _mapCreateBudgetToState(
    BudgetEvent event,
    Emitter<BudgetState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, failure: null));

    try {
      final result = await _createBudgetUseCase(
        name: event.name,
        amount: event.amount,
        startDate: event.startDate,
        endDate: event.endDate,
        categoryId: event.categoryId,
        notes: event.notes,
        currency: event.currency,
      );

      result.fold(
        (failure) => emit(state.copyWith(
          isLoading: false,
          failure: failure,
        )),
        (budget) => emit(state.copyWith(
          isLoading: false,
          budgets: [budget, ...state.budgets],
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        failure: Failure.databaseError('Failed to create budget: $e'),
      ));
    }
  }

  Future<void> _mapUpdateBudgetToState(
    BudgetEvent event,
    Emitter<BudgetState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, failure: null));

    try {
      final result = await _updateBudgetUseCase(
        id: event.id,
        name: event.name,
        amount: event.amount,
        startDate: event.startDate,
        endDate: event.endDate,
        categoryId: event.categoryId,
        notes: event.notes,
        currency: event.currency,
      );

      result.fold(
        (failure) => emit(state.copyWith(
          isLoading: false,
          failure: failure,
        )),
        (budget) {
          final updatedBudgets = state.budgets.map((budget) {
            return budget.id == event.id ? result : budget;
          }).toList();

          emit(state.copyWith(
            isLoading: false,
            budgets: updatedBudgets,
          ));
        },
      );
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        failure: Failure.databaseError('Failed to update budget: $e'),
      ));
    }
  }

  Future<void> _mapDeleteBudgetToState(
    BudgetEvent event,
    Emitter<BudgetState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, failure: null));

    try {
      final result = await _deleteBudgetUseCase(event.id);

      result.fold(
        (failure) => emit(state.copyWith(
          isLoading: false,
          failure: failure,
        )),
        (_) => emit(state.copyWith(
          isLoading: false,
          budgets: state.budgets.where((budget) => budget.id != event.id).toList(),
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        failure: Failure.databaseError('Failed to delete budget: $e'),
      ));
    }
  }

  Future<void> _mapClearErrorToState(Emitter<BudgetState> emit) {
    emit(state.copyWith(
      isLoading: false,
      failure: null,
    ));
  }

  void selectBudget(Budget budget) {
    // Handle budget selection for editing
    // TODO: Navigate to budget edit screen
  }
}