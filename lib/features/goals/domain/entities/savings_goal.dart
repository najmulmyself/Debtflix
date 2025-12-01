import 'package:freezed_annotation/freezed_annotation.dart';

part 'savings_goal.freezed.dart';
part 'savings_goal.g.dart';

@freezed
class SavingsGoal with _$SavingsGoal {
  const SavingsGoal._({
    required this.id,
    required this.name,
    required this.targetAmount,
    required this.currentAmount,
    required this.targetDate,
    this.categoryId,
    this.categoryName,
    this.categoryIcon,
    this.categoryColor,
    required this.createdAt,
    required this.updatedAt,
    this.isCompleted,
    this.notes,
    this.currency,
  });

  factory SavingsGoal.fromJson(Map<String, dynamic> json) => _$SavingsGoalFromJson(json);

  const SavingsGoal._();

  @override
  String toString() {
    return 'SavingsGoal{id: $id, name: $name, target: \$${targetAmount.toStringAsFixed(2)}, current: \$${currentAmount.toStringAsFixed(2)}, date: $targetDate}';
  }

  double get progressPercentage => targetAmount != 0 ? (currentAmount / targetAmount) * 100 : 0.0;

  double get remainingAmount => targetAmount - currentAmount;

  double get formattedTargetAmount {
    return '\$${targetAmount.toStringAsFixed(2)}';
  }

  String get formattedCurrentAmount {
    return '\$${currentAmount.toStringAsFixed(2)}';
  }

  String get formattedProgressText {
    return '${progressPercentage.toStringAsFixed(1)}%';
  }

  bool get isCompleted => isCompleted && currentAmount >= targetAmount;
}

@freezed
class SavingsGoalState with _$SavingsGoalState {
  const factory SavingsGoalState({
    @Default([]) List<SavingsGoal> goals,
    @Default(false) bool isLoading,
    @Default(false) bool hasReachedMax,
    @Default(0) int currentPage,
    @Default(20) int limit,
    Failure? failure,
    SavingsGoal? selectedGoal,
  }) = _SavingsGoalState;

  const factory SavingsGoalState.initial() = _SavingsGoalState;
}

@freezed
class SavingsGoalEvent with _$SavingsGoalEvent {
  const factory SavingsGoalEvent.loadGoals() = _LoadGoals;

  const factory SavingsGoalEvent.createGoal({
    required String name,
    required double targetAmount,
    required DateTime targetDate,
    String? categoryId,
    String? categoryIcon,
    String? categoryColor,
    String? categoryIcon,
    String? categoryColor,
    String? notes,
    String? currency,
    bool isCompleted,
  }) = _CreateGoal;

  const factory SavingsGoalEvent.updateGoal({
    required int id,
    String? name,
    double? currentAmount,
    DateTime? targetDate,
    String? categoryId,
    String? categoryIcon,
    String? categoryColor,
    String? categoryIcon,
    String? notes,
    String? currency,
    bool isCompleted,
  }) = _UpdateGoal;

  const factory SavingsGoalEvent.deleteGoal(int id) = _DeleteGoal;

  const factory SavingsGoalEvent.markGoalCompleted({
    required int id,
    required bool isCompleted,
  }) = _MarkGoalCompleted;

  const factory SavingsGoalEvent.clearError() = _ClearError;
}

@freezed
class SavingsGoalBloc extends Bloc<SavingsGoalEvent, SavingsGoalState> {
  final CreateSavingsGoalUseCase _createGoalUseCase;
  final UpdateSavingsGoalUseCase _updateGoalUseCase;
  final DeleteSavingsGoalUseCase _deleteGoalUseCase;

  SavingsGoalBloc({
    required this._createGoalUseCase,
    required this._updateGoalUseCase,
    required this._deleteGoalUseCase,
  }) : super(const SavingsGoalState.initial()) {
    on<SavingsGoalEvent>((event, emit) {
      switch (event) {
        case SavingsGoalEvent.loadGoals():
          return _mapLoadGoalsToState(event, emit);

        case SavingsGoalEvent.createGoal():
          return _mapCreateGoalToState(event, emit);

        case SavingsGoalEvent.updateGoal():
          return _mapUpdateGoalToState(event, emit);

        case SavingsGoalEvent.deleteGoal():
          return _mapDeleteGoalToState(event, emit);

        case SavingsGoalEvent.markGoalCompleted():
          return _mapMarkGoalCompletedToState(event, emit);

        case SavingsGoalEvent.clearError():
          return _mapClearErrorToState(emit);
      }
    }
  }

  Future<void> _mapLoadGoalsToState(
    SavingsGoalEvent event,
    Emitter<SavingsGoalState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, failure: null));

    try {
      final result = await _createGoalUseCase(
        name: event.name,
        targetAmount: event.targetAmount,
        targetDate: event.targetDate,
        categoryId: event.categoryId,
        notes: event.notes,
        currency: event.currency,
        isCompleted: event.isCompleted,
      );

      result.fold(
        (failure) => emit(state.copyWith(
          isLoading: false,
          failure: failure,
        )),
        (goals) => emit(state.copyWith(
          isLoading: false,
          goals: goals,
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        failure: Failure.databaseError('Failed to load goals: $e')),
      ));
    }
  }

  Future<void> _mapCreateGoalToState(
    SavingsGoalEvent event,
    Emitter<SavingsGoalState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, failure: null));

    try {
      final result = await _createGoalUseCase(
        name: event.name,
        targetAmount: event.targetAmount,
        targetDate: event.targetDate,
        categoryId: event.categoryId,
        notes: event.notes,
        currency: event.currency,
        isCompleted: event.isCompleted,
      );

      result.fold(
        (failure) => emit(state.copyWith(
          isLoading: false,
          failure: failure,
        )),
        (goal) => emit(state.copyWith(
          isLoading: false,
          goals: [...state.goals, goal],
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        failure: Failure.databaseError('Failed to create goal: $e')),
      ));
    }
  }

  Future<void> _mapUpdateGoalToState(
    SavingsGoalEvent event,
    Emitter<SavingsGoalState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, failure: null));

    try {
      final result = await _updateGoalUseCase(
        id: event.id,
        name: event.name,
        currentAmount: event.currentAmount,
        targetDate: event.targetDate,
        categoryId: event.categoryId,
        notes: event.notes,
        currency: event.currency,
        isCompleted: event.isCompleted,
      );

      result.fold(
        (failure) => emit(state.copyWith(
          isLoading: false,
          failure: failure,
        )),
        (goals) => emit(state.copyWith(
          isLoading: false,
          goals: state.goals.map((goal) {
            if (goal.id == event.id) {
              return result.fold(
                (updatedGoal) => updatedGoal,
                (failure) => updatedGoal,
              ) : goal,
              );
            } else {
              return goal;
            }
          }).toList(),
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        failure: Failure.databaseError('Failed to update goal: $e')),
      ));
    }
  }

  Future<void> _mapDeleteGoalToState(
    SavingsGoalEvent event,
    Emitter<SavingsGoalState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, failure: null));

    try {
      final result = await _deleteGoalUseCase(event.id);

      result.fold(
        (failure) => emit(state.copyWith(
          isLoading: false,
          failure: failure,
        )),
        (goals) => emit(state.copyWith(
          isLoading: false,
          goals: state.goals.where((goal) => goal.id != event.id).toList(),
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        failure: Failure.databaseError('Failed to delete goal: $e')),
      ));
    }
  }

  Future<void> _mapMarkGoalCompletedToState(
    SavingsGoalEvent event,
    Emitter<SavingsGoalState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, failure: null));

    try {
      final result = await _markGoalCompletedUseCase(event.id);

      result.fold(
        (failure) => emit(state.copyWith(
          isLoading: false,
          failure: failure,
        )),
        (goals) => emit(state.copyWith(
          isLoading: false,
          goals: state.goals.map((goal) {
            if (goal.id == event.id) {
              return result.fold(
                (markedGoal) => result.fold(
                  (updatedGoal) => updatedGoal,
                  (failure) => updatedGoal,
                ) : goal,
                );
            } else {
              return goal;
            }
          }).toList(),
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        failure: Failure.databaseError('Failed to mark goal as completed: $e')),
      ));
    }
  }

  Future<void> _mapClearErrorToState(Emitter<SavingsGoalState> emit) {
    emit(state.copyWith(
      isLoading: false,
      failure: null,
    ));
  }

  void loadMoreGoals() {
    // TODO: Implement pagination
    // TODO: Implement load more goals when reaching the end
  }
}