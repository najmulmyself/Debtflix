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
  }) : super(const BudgetState()) {
    on<BudgetEvent>((event, emit) {
      return event.when(
        loadBudgets: (categoryId, startDate, endDate) => _mapLoadBudgetsToState(
          _LoadBudgets(categoryId: categoryId, startDate: startDate, endDate: endDate),
          emit,
        ),
        createBudget: (name, amount, startDate, endDate, categoryId, notes, currency) =>
          _mapCreateBudgetToState(
            _CreateBudget(
              name: name,
              amount: amount,
              startDate: startDate,
              endDate: endDate,
              categoryId: categoryId,
              notes: notes,
              currency: currency,
            ),
            emit,
          ),
        updateBudget: (id, name, amount, startDate, endDate, categoryId, notes, currency) =>
          _mapUpdateBudgetToState(
            _UpdateBudget(
              id: id,
              name: name,
              amount: amount,
              startDate: startDate,
              endDate: endDate,
              categoryId: categoryId,
              notes: notes,
              currency: currency,
            ),
            emit,
          ),
        deleteBudget: (id) => _mapDeleteBudgetToState(
          _DeleteBudget(id),
          emit,
        ),
        clearError: () => _mapClearErrorToState(emit),
      );
    });
  }

  Future<void> _mapLoadBudgetsToState(
    _LoadBudgets event,
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
    _CreateBudget event,
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
    _UpdateBudget event,
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
        (updatedBudget) {
          final updatedBudgets = state.budgets.map((budget) {
            return budget.id == event.id ? updatedBudget : budget;
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
    _DeleteBudget event,
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

  Future<void> _mapClearErrorToState(Emitter<BudgetState> emit) async {
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