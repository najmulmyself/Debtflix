// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'savings_goal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SavingsGoal _$SavingsGoalFromJson(Map<String, dynamic> json) {
  return _SavingsGoal.fromJson(json);
}

/// @nodoc
mixin _$SavingsGoal {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get targetAmount => throw _privateConstructorUsedError;
  double get currentAmount => throw _privateConstructorUsedError;
  DateTime get targetDate => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  String? get categoryName => throw _privateConstructorUsedError;
  String? get categoryIcon => throw _privateConstructorUsedError;
  String? get categoryColor => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  bool? get isCompleted => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavingsGoalCopyWith<SavingsGoal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavingsGoalCopyWith<$Res> {
  factory $SavingsGoalCopyWith(
          SavingsGoal value, $Res Function(SavingsGoal) then) =
      _$SavingsGoalCopyWithImpl<$Res, SavingsGoal>;
  @useResult
  $Res call(
      {int id,
      String name,
      double targetAmount,
      double currentAmount,
      DateTime targetDate,
      int? categoryId,
      String? categoryName,
      String? categoryIcon,
      String? categoryColor,
      DateTime createdAt,
      DateTime updatedAt,
      bool? isCompleted,
      String? notes,
      String? currency});
}

/// @nodoc
class _$SavingsGoalCopyWithImpl<$Res, $Val extends SavingsGoal>
    implements $SavingsGoalCopyWith<$Res> {
  _$SavingsGoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? targetAmount = null,
    Object? currentAmount = null,
    Object? targetDate = null,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? categoryIcon = freezed,
    Object? categoryColor = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isCompleted = freezed,
    Object? notes = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      targetAmount: null == targetAmount
          ? _value.targetAmount
          : targetAmount // ignore: cast_nullable_to_non_nullable
              as double,
      currentAmount: null == currentAmount
          ? _value.currentAmount
          : currentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      targetDate: null == targetDate
          ? _value.targetDate
          : targetDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIcon: freezed == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryColor: freezed == categoryColor
          ? _value.categoryColor
          : categoryColor // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavingsGoalImplCopyWith<$Res>
    implements $SavingsGoalCopyWith<$Res> {
  factory _$$SavingsGoalImplCopyWith(
          _$SavingsGoalImpl value, $Res Function(_$SavingsGoalImpl) then) =
      __$$SavingsGoalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      double targetAmount,
      double currentAmount,
      DateTime targetDate,
      int? categoryId,
      String? categoryName,
      String? categoryIcon,
      String? categoryColor,
      DateTime createdAt,
      DateTime updatedAt,
      bool? isCompleted,
      String? notes,
      String? currency});
}

/// @nodoc
class __$$SavingsGoalImplCopyWithImpl<$Res>
    extends _$SavingsGoalCopyWithImpl<$Res, _$SavingsGoalImpl>
    implements _$$SavingsGoalImplCopyWith<$Res> {
  __$$SavingsGoalImplCopyWithImpl(
      _$SavingsGoalImpl _value, $Res Function(_$SavingsGoalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? targetAmount = null,
    Object? currentAmount = null,
    Object? targetDate = null,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? categoryIcon = freezed,
    Object? categoryColor = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isCompleted = freezed,
    Object? notes = freezed,
    Object? currency = freezed,
  }) {
    return _then(_$SavingsGoalImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      targetAmount: null == targetAmount
          ? _value.targetAmount
          : targetAmount // ignore: cast_nullable_to_non_nullable
              as double,
      currentAmount: null == currentAmount
          ? _value.currentAmount
          : currentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      targetDate: null == targetDate
          ? _value.targetDate
          : targetDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIcon: freezed == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryColor: freezed == categoryColor
          ? _value.categoryColor
          : categoryColor // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavingsGoalImpl extends _SavingsGoal {
  const _$SavingsGoalImpl(
      {required this.id,
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
      this.currency})
      : super._();

  factory _$SavingsGoalImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavingsGoalImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final double targetAmount;
  @override
  final double currentAmount;
  @override
  final DateTime targetDate;
  @override
  final int? categoryId;
  @override
  final String? categoryName;
  @override
  final String? categoryIcon;
  @override
  final String? categoryColor;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final bool? isCompleted;
  @override
  final String? notes;
  @override
  final String? currency;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavingsGoalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.targetAmount, targetAmount) ||
                other.targetAmount == targetAmount) &&
            (identical(other.currentAmount, currentAmount) ||
                other.currentAmount == currentAmount) &&
            (identical(other.targetDate, targetDate) ||
                other.targetDate == targetDate) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryIcon, categoryIcon) ||
                other.categoryIcon == categoryIcon) &&
            (identical(other.categoryColor, categoryColor) ||
                other.categoryColor == categoryColor) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      targetAmount,
      currentAmount,
      targetDate,
      categoryId,
      categoryName,
      categoryIcon,
      categoryColor,
      createdAt,
      updatedAt,
      isCompleted,
      notes,
      currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavingsGoalImplCopyWith<_$SavingsGoalImpl> get copyWith =>
      __$$SavingsGoalImplCopyWithImpl<_$SavingsGoalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavingsGoalImplToJson(
      this,
    );
  }
}

abstract class _SavingsGoal extends SavingsGoal {
  const factory _SavingsGoal(
      {required final int id,
      required final String name,
      required final double targetAmount,
      required final double currentAmount,
      required final DateTime targetDate,
      final int? categoryId,
      final String? categoryName,
      final String? categoryIcon,
      final String? categoryColor,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final bool? isCompleted,
      final String? notes,
      final String? currency}) = _$SavingsGoalImpl;
  const _SavingsGoal._() : super._();

  factory _SavingsGoal.fromJson(Map<String, dynamic> json) =
      _$SavingsGoalImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  double get targetAmount;
  @override
  double get currentAmount;
  @override
  DateTime get targetDate;
  @override
  int? get categoryId;
  @override
  String? get categoryName;
  @override
  String? get categoryIcon;
  @override
  String? get categoryColor;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  bool? get isCompleted;
  @override
  String? get notes;
  @override
  String? get currency;
  @override
  @JsonKey(ignore: true)
  _$$SavingsGoalImplCopyWith<_$SavingsGoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SavingsGoalState {
  List<SavingsGoal> get goals => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  SavingsGoal? get selectedGoal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SavingsGoalStateCopyWith<SavingsGoalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavingsGoalStateCopyWith<$Res> {
  factory $SavingsGoalStateCopyWith(
          SavingsGoalState value, $Res Function(SavingsGoalState) then) =
      _$SavingsGoalStateCopyWithImpl<$Res, SavingsGoalState>;
  @useResult
  $Res call(
      {List<SavingsGoal> goals,
      bool isLoading,
      bool hasReachedMax,
      int currentPage,
      int limit,
      Failure? failure,
      SavingsGoal? selectedGoal});

  $SavingsGoalCopyWith<$Res>? get selectedGoal;
}

/// @nodoc
class _$SavingsGoalStateCopyWithImpl<$Res, $Val extends SavingsGoalState>
    implements $SavingsGoalStateCopyWith<$Res> {
  _$SavingsGoalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goals = null,
    Object? isLoading = null,
    Object? hasReachedMax = null,
    Object? currentPage = null,
    Object? limit = null,
    Object? failure = freezed,
    Object? selectedGoal = freezed,
  }) {
    return _then(_value.copyWith(
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<SavingsGoal>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      selectedGoal: freezed == selectedGoal
          ? _value.selectedGoal
          : selectedGoal // ignore: cast_nullable_to_non_nullable
              as SavingsGoal?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SavingsGoalCopyWith<$Res>? get selectedGoal {
    if (_value.selectedGoal == null) {
      return null;
    }

    return $SavingsGoalCopyWith<$Res>(_value.selectedGoal!, (value) {
      return _then(_value.copyWith(selectedGoal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SavingsGoalStateImplCopyWith<$Res>
    implements $SavingsGoalStateCopyWith<$Res> {
  factory _$$SavingsGoalStateImplCopyWith(_$SavingsGoalStateImpl value,
          $Res Function(_$SavingsGoalStateImpl) then) =
      __$$SavingsGoalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SavingsGoal> goals,
      bool isLoading,
      bool hasReachedMax,
      int currentPage,
      int limit,
      Failure? failure,
      SavingsGoal? selectedGoal});

  @override
  $SavingsGoalCopyWith<$Res>? get selectedGoal;
}

/// @nodoc
class __$$SavingsGoalStateImplCopyWithImpl<$Res>
    extends _$SavingsGoalStateCopyWithImpl<$Res, _$SavingsGoalStateImpl>
    implements _$$SavingsGoalStateImplCopyWith<$Res> {
  __$$SavingsGoalStateImplCopyWithImpl(_$SavingsGoalStateImpl _value,
      $Res Function(_$SavingsGoalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goals = null,
    Object? isLoading = null,
    Object? hasReachedMax = null,
    Object? currentPage = null,
    Object? limit = null,
    Object? failure = freezed,
    Object? selectedGoal = freezed,
  }) {
    return _then(_$SavingsGoalStateImpl(
      goals: null == goals
          ? _value._goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<SavingsGoal>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      selectedGoal: freezed == selectedGoal
          ? _value.selectedGoal
          : selectedGoal // ignore: cast_nullable_to_non_nullable
              as SavingsGoal?,
    ));
  }
}

/// @nodoc

class _$SavingsGoalStateImpl implements _SavingsGoalState {
  const _$SavingsGoalStateImpl(
      {final List<SavingsGoal> goals = const [],
      this.isLoading = false,
      this.hasReachedMax = false,
      this.currentPage = 0,
      this.limit = 20,
      this.failure,
      this.selectedGoal})
      : _goals = goals;

  final List<SavingsGoal> _goals;
  @override
  @JsonKey()
  List<SavingsGoal> get goals {
    if (_goals is EqualUnmodifiableListView) return _goals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goals);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final int limit;
  @override
  final Failure? failure;
  @override
  final SavingsGoal? selectedGoal;

  @override
  String toString() {
    return 'SavingsGoalState(goals: $goals, isLoading: $isLoading, hasReachedMax: $hasReachedMax, currentPage: $currentPage, limit: $limit, failure: $failure, selectedGoal: $selectedGoal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavingsGoalStateImpl &&
            const DeepCollectionEquality().equals(other._goals, _goals) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            (identical(other.selectedGoal, selectedGoal) ||
                other.selectedGoal == selectedGoal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_goals),
      isLoading,
      hasReachedMax,
      currentPage,
      limit,
      const DeepCollectionEquality().hash(failure),
      selectedGoal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavingsGoalStateImplCopyWith<_$SavingsGoalStateImpl> get copyWith =>
      __$$SavingsGoalStateImplCopyWithImpl<_$SavingsGoalStateImpl>(
          this, _$identity);
}

abstract class _SavingsGoalState implements SavingsGoalState {
  const factory _SavingsGoalState(
      {final List<SavingsGoal> goals,
      final bool isLoading,
      final bool hasReachedMax,
      final int currentPage,
      final int limit,
      final Failure? failure,
      final SavingsGoal? selectedGoal}) = _$SavingsGoalStateImpl;

  @override
  List<SavingsGoal> get goals;
  @override
  bool get isLoading;
  @override
  bool get hasReachedMax;
  @override
  int get currentPage;
  @override
  int get limit;
  @override
  Failure? get failure;
  @override
  SavingsGoal? get selectedGoal;
  @override
  @JsonKey(ignore: true)
  _$$SavingsGoalStateImplCopyWith<_$SavingsGoalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SavingsGoalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGoals,
    required TResult Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)
        createGoal,
    required TResult Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)
        updateGoal,
    required TResult Function(int id) deleteGoal,
    required TResult Function(int id, bool isCompleted) markGoalCompleted,
    required TResult Function() clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGoals,
    TResult? Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        createGoal,
    TResult? Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        updateGoal,
    TResult? Function(int id)? deleteGoal,
    TResult? Function(int id, bool isCompleted)? markGoalCompleted,
    TResult? Function()? clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGoals,
    TResult Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        createGoal,
    TResult Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        updateGoal,
    TResult Function(int id)? deleteGoal,
    TResult Function(int id, bool isCompleted)? markGoalCompleted,
    TResult Function()? clearError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadGoals value) loadGoals,
    required TResult Function(_CreateGoal value) createGoal,
    required TResult Function(_UpdateGoal value) updateGoal,
    required TResult Function(_DeleteGoal value) deleteGoal,
    required TResult Function(_MarkGoalCompleted value) markGoalCompleted,
    required TResult Function(_ClearError value) clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadGoals value)? loadGoals,
    TResult? Function(_CreateGoal value)? createGoal,
    TResult? Function(_UpdateGoal value)? updateGoal,
    TResult? Function(_DeleteGoal value)? deleteGoal,
    TResult? Function(_MarkGoalCompleted value)? markGoalCompleted,
    TResult? Function(_ClearError value)? clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadGoals value)? loadGoals,
    TResult Function(_CreateGoal value)? createGoal,
    TResult Function(_UpdateGoal value)? updateGoal,
    TResult Function(_DeleteGoal value)? deleteGoal,
    TResult Function(_MarkGoalCompleted value)? markGoalCompleted,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavingsGoalEventCopyWith<$Res> {
  factory $SavingsGoalEventCopyWith(
          SavingsGoalEvent value, $Res Function(SavingsGoalEvent) then) =
      _$SavingsGoalEventCopyWithImpl<$Res, SavingsGoalEvent>;
}

/// @nodoc
class _$SavingsGoalEventCopyWithImpl<$Res, $Val extends SavingsGoalEvent>
    implements $SavingsGoalEventCopyWith<$Res> {
  _$SavingsGoalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadGoalsImplCopyWith<$Res> {
  factory _$$LoadGoalsImplCopyWith(
          _$LoadGoalsImpl value, $Res Function(_$LoadGoalsImpl) then) =
      __$$LoadGoalsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadGoalsImplCopyWithImpl<$Res>
    extends _$SavingsGoalEventCopyWithImpl<$Res, _$LoadGoalsImpl>
    implements _$$LoadGoalsImplCopyWith<$Res> {
  __$$LoadGoalsImplCopyWithImpl(
      _$LoadGoalsImpl _value, $Res Function(_$LoadGoalsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadGoalsImpl implements _LoadGoals {
  const _$LoadGoalsImpl();

  @override
  String toString() {
    return 'SavingsGoalEvent.loadGoals()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadGoalsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGoals,
    required TResult Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)
        createGoal,
    required TResult Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)
        updateGoal,
    required TResult Function(int id) deleteGoal,
    required TResult Function(int id, bool isCompleted) markGoalCompleted,
    required TResult Function() clearError,
  }) {
    return loadGoals();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGoals,
    TResult? Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        createGoal,
    TResult? Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        updateGoal,
    TResult? Function(int id)? deleteGoal,
    TResult? Function(int id, bool isCompleted)? markGoalCompleted,
    TResult? Function()? clearError,
  }) {
    return loadGoals?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGoals,
    TResult Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        createGoal,
    TResult Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        updateGoal,
    TResult Function(int id)? deleteGoal,
    TResult Function(int id, bool isCompleted)? markGoalCompleted,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (loadGoals != null) {
      return loadGoals();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadGoals value) loadGoals,
    required TResult Function(_CreateGoal value) createGoal,
    required TResult Function(_UpdateGoal value) updateGoal,
    required TResult Function(_DeleteGoal value) deleteGoal,
    required TResult Function(_MarkGoalCompleted value) markGoalCompleted,
    required TResult Function(_ClearError value) clearError,
  }) {
    return loadGoals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadGoals value)? loadGoals,
    TResult? Function(_CreateGoal value)? createGoal,
    TResult? Function(_UpdateGoal value)? updateGoal,
    TResult? Function(_DeleteGoal value)? deleteGoal,
    TResult? Function(_MarkGoalCompleted value)? markGoalCompleted,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return loadGoals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadGoals value)? loadGoals,
    TResult Function(_CreateGoal value)? createGoal,
    TResult Function(_UpdateGoal value)? updateGoal,
    TResult Function(_DeleteGoal value)? deleteGoal,
    TResult Function(_MarkGoalCompleted value)? markGoalCompleted,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (loadGoals != null) {
      return loadGoals(this);
    }
    return orElse();
  }
}

abstract class _LoadGoals implements SavingsGoalEvent {
  const factory _LoadGoals() = _$LoadGoalsImpl;
}

/// @nodoc
abstract class _$$CreateGoalImplCopyWith<$Res> {
  factory _$$CreateGoalImplCopyWith(
          _$CreateGoalImpl value, $Res Function(_$CreateGoalImpl) then) =
      __$$CreateGoalImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      double targetAmount,
      DateTime targetDate,
      String? categoryId,
      String? categoryIcon,
      String? categoryColor,
      String? notes,
      String? currency,
      bool isCompleted});
}

/// @nodoc
class __$$CreateGoalImplCopyWithImpl<$Res>
    extends _$SavingsGoalEventCopyWithImpl<$Res, _$CreateGoalImpl>
    implements _$$CreateGoalImplCopyWith<$Res> {
  __$$CreateGoalImplCopyWithImpl(
      _$CreateGoalImpl _value, $Res Function(_$CreateGoalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? targetAmount = null,
    Object? targetDate = null,
    Object? categoryId = freezed,
    Object? categoryIcon = freezed,
    Object? categoryColor = freezed,
    Object? notes = freezed,
    Object? currency = freezed,
    Object? isCompleted = null,
  }) {
    return _then(_$CreateGoalImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      targetAmount: null == targetAmount
          ? _value.targetAmount
          : targetAmount // ignore: cast_nullable_to_non_nullable
              as double,
      targetDate: null == targetDate
          ? _value.targetDate
          : targetDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIcon: freezed == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryColor: freezed == categoryColor
          ? _value.categoryColor
          : categoryColor // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CreateGoalImpl implements _CreateGoal {
  const _$CreateGoalImpl(
      {required this.name,
      required this.targetAmount,
      required this.targetDate,
      this.categoryId,
      this.categoryIcon,
      this.categoryColor,
      this.notes,
      this.currency,
      this.isCompleted = false});

  @override
  final String name;
  @override
  final double targetAmount;
  @override
  final DateTime targetDate;
  @override
  final String? categoryId;
  @override
  final String? categoryIcon;
  @override
  final String? categoryColor;
  @override
  final String? notes;
  @override
  final String? currency;
  @override
  @JsonKey()
  final bool isCompleted;

  @override
  String toString() {
    return 'SavingsGoalEvent.createGoal(name: $name, targetAmount: $targetAmount, targetDate: $targetDate, categoryId: $categoryId, categoryIcon: $categoryIcon, categoryColor: $categoryColor, notes: $notes, currency: $currency, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGoalImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.targetAmount, targetAmount) ||
                other.targetAmount == targetAmount) &&
            (identical(other.targetDate, targetDate) ||
                other.targetDate == targetDate) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryIcon, categoryIcon) ||
                other.categoryIcon == categoryIcon) &&
            (identical(other.categoryColor, categoryColor) ||
                other.categoryColor == categoryColor) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, targetAmount, targetDate,
      categoryId, categoryIcon, categoryColor, notes, currency, isCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGoalImplCopyWith<_$CreateGoalImpl> get copyWith =>
      __$$CreateGoalImplCopyWithImpl<_$CreateGoalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGoals,
    required TResult Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)
        createGoal,
    required TResult Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)
        updateGoal,
    required TResult Function(int id) deleteGoal,
    required TResult Function(int id, bool isCompleted) markGoalCompleted,
    required TResult Function() clearError,
  }) {
    return createGoal(name, targetAmount, targetDate, categoryId, categoryIcon,
        categoryColor, notes, currency, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGoals,
    TResult? Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        createGoal,
    TResult? Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        updateGoal,
    TResult? Function(int id)? deleteGoal,
    TResult? Function(int id, bool isCompleted)? markGoalCompleted,
    TResult? Function()? clearError,
  }) {
    return createGoal?.call(name, targetAmount, targetDate, categoryId,
        categoryIcon, categoryColor, notes, currency, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGoals,
    TResult Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        createGoal,
    TResult Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        updateGoal,
    TResult Function(int id)? deleteGoal,
    TResult Function(int id, bool isCompleted)? markGoalCompleted,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (createGoal != null) {
      return createGoal(name, targetAmount, targetDate, categoryId,
          categoryIcon, categoryColor, notes, currency, isCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadGoals value) loadGoals,
    required TResult Function(_CreateGoal value) createGoal,
    required TResult Function(_UpdateGoal value) updateGoal,
    required TResult Function(_DeleteGoal value) deleteGoal,
    required TResult Function(_MarkGoalCompleted value) markGoalCompleted,
    required TResult Function(_ClearError value) clearError,
  }) {
    return createGoal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadGoals value)? loadGoals,
    TResult? Function(_CreateGoal value)? createGoal,
    TResult? Function(_UpdateGoal value)? updateGoal,
    TResult? Function(_DeleteGoal value)? deleteGoal,
    TResult? Function(_MarkGoalCompleted value)? markGoalCompleted,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return createGoal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadGoals value)? loadGoals,
    TResult Function(_CreateGoal value)? createGoal,
    TResult Function(_UpdateGoal value)? updateGoal,
    TResult Function(_DeleteGoal value)? deleteGoal,
    TResult Function(_MarkGoalCompleted value)? markGoalCompleted,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (createGoal != null) {
      return createGoal(this);
    }
    return orElse();
  }
}

abstract class _CreateGoal implements SavingsGoalEvent {
  const factory _CreateGoal(
      {required final String name,
      required final double targetAmount,
      required final DateTime targetDate,
      final String? categoryId,
      final String? categoryIcon,
      final String? categoryColor,
      final String? notes,
      final String? currency,
      final bool isCompleted}) = _$CreateGoalImpl;

  String get name;
  double get targetAmount;
  DateTime get targetDate;
  String? get categoryId;
  String? get categoryIcon;
  String? get categoryColor;
  String? get notes;
  String? get currency;
  bool get isCompleted;
  @JsonKey(ignore: true)
  _$$CreateGoalImplCopyWith<_$CreateGoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateGoalImplCopyWith<$Res> {
  factory _$$UpdateGoalImplCopyWith(
          _$UpdateGoalImpl value, $Res Function(_$UpdateGoalImpl) then) =
      __$$UpdateGoalImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String? name,
      double? currentAmount,
      DateTime? targetDate,
      String? categoryId,
      String? categoryIcon,
      String? categoryColor,
      String? notes,
      String? currency,
      bool isCompleted});
}

/// @nodoc
class __$$UpdateGoalImplCopyWithImpl<$Res>
    extends _$SavingsGoalEventCopyWithImpl<$Res, _$UpdateGoalImpl>
    implements _$$UpdateGoalImplCopyWith<$Res> {
  __$$UpdateGoalImplCopyWithImpl(
      _$UpdateGoalImpl _value, $Res Function(_$UpdateGoalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? currentAmount = freezed,
    Object? targetDate = freezed,
    Object? categoryId = freezed,
    Object? categoryIcon = freezed,
    Object? categoryColor = freezed,
    Object? notes = freezed,
    Object? currency = freezed,
    Object? isCompleted = null,
  }) {
    return _then(_$UpdateGoalImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      currentAmount: freezed == currentAmount
          ? _value.currentAmount
          : currentAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      targetDate: freezed == targetDate
          ? _value.targetDate
          : targetDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIcon: freezed == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryColor: freezed == categoryColor
          ? _value.categoryColor
          : categoryColor // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateGoalImpl implements _UpdateGoal {
  const _$UpdateGoalImpl(
      {required this.id,
      this.name,
      this.currentAmount,
      this.targetDate,
      this.categoryId,
      this.categoryIcon,
      this.categoryColor,
      this.notes,
      this.currency,
      this.isCompleted = false});

  @override
  final int id;
  @override
  final String? name;
  @override
  final double? currentAmount;
  @override
  final DateTime? targetDate;
  @override
  final String? categoryId;
  @override
  final String? categoryIcon;
  @override
  final String? categoryColor;
  @override
  final String? notes;
  @override
  final String? currency;
  @override
  @JsonKey()
  final bool isCompleted;

  @override
  String toString() {
    return 'SavingsGoalEvent.updateGoal(id: $id, name: $name, currentAmount: $currentAmount, targetDate: $targetDate, categoryId: $categoryId, categoryIcon: $categoryIcon, categoryColor: $categoryColor, notes: $notes, currency: $currency, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGoalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.currentAmount, currentAmount) ||
                other.currentAmount == currentAmount) &&
            (identical(other.targetDate, targetDate) ||
                other.targetDate == targetDate) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryIcon, categoryIcon) ||
                other.categoryIcon == categoryIcon) &&
            (identical(other.categoryColor, categoryColor) ||
                other.categoryColor == categoryColor) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      currentAmount,
      targetDate,
      categoryId,
      categoryIcon,
      categoryColor,
      notes,
      currency,
      isCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGoalImplCopyWith<_$UpdateGoalImpl> get copyWith =>
      __$$UpdateGoalImplCopyWithImpl<_$UpdateGoalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGoals,
    required TResult Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)
        createGoal,
    required TResult Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)
        updateGoal,
    required TResult Function(int id) deleteGoal,
    required TResult Function(int id, bool isCompleted) markGoalCompleted,
    required TResult Function() clearError,
  }) {
    return updateGoal(id, name, currentAmount, targetDate, categoryId,
        categoryIcon, categoryColor, notes, currency, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGoals,
    TResult? Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        createGoal,
    TResult? Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        updateGoal,
    TResult? Function(int id)? deleteGoal,
    TResult? Function(int id, bool isCompleted)? markGoalCompleted,
    TResult? Function()? clearError,
  }) {
    return updateGoal?.call(id, name, currentAmount, targetDate, categoryId,
        categoryIcon, categoryColor, notes, currency, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGoals,
    TResult Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        createGoal,
    TResult Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        updateGoal,
    TResult Function(int id)? deleteGoal,
    TResult Function(int id, bool isCompleted)? markGoalCompleted,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (updateGoal != null) {
      return updateGoal(id, name, currentAmount, targetDate, categoryId,
          categoryIcon, categoryColor, notes, currency, isCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadGoals value) loadGoals,
    required TResult Function(_CreateGoal value) createGoal,
    required TResult Function(_UpdateGoal value) updateGoal,
    required TResult Function(_DeleteGoal value) deleteGoal,
    required TResult Function(_MarkGoalCompleted value) markGoalCompleted,
    required TResult Function(_ClearError value) clearError,
  }) {
    return updateGoal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadGoals value)? loadGoals,
    TResult? Function(_CreateGoal value)? createGoal,
    TResult? Function(_UpdateGoal value)? updateGoal,
    TResult? Function(_DeleteGoal value)? deleteGoal,
    TResult? Function(_MarkGoalCompleted value)? markGoalCompleted,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return updateGoal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadGoals value)? loadGoals,
    TResult Function(_CreateGoal value)? createGoal,
    TResult Function(_UpdateGoal value)? updateGoal,
    TResult Function(_DeleteGoal value)? deleteGoal,
    TResult Function(_MarkGoalCompleted value)? markGoalCompleted,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (updateGoal != null) {
      return updateGoal(this);
    }
    return orElse();
  }
}

abstract class _UpdateGoal implements SavingsGoalEvent {
  const factory _UpdateGoal(
      {required final int id,
      final String? name,
      final double? currentAmount,
      final DateTime? targetDate,
      final String? categoryId,
      final String? categoryIcon,
      final String? categoryColor,
      final String? notes,
      final String? currency,
      final bool isCompleted}) = _$UpdateGoalImpl;

  int get id;
  String? get name;
  double? get currentAmount;
  DateTime? get targetDate;
  String? get categoryId;
  String? get categoryIcon;
  String? get categoryColor;
  String? get notes;
  String? get currency;
  bool get isCompleted;
  @JsonKey(ignore: true)
  _$$UpdateGoalImplCopyWith<_$UpdateGoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteGoalImplCopyWith<$Res> {
  factory _$$DeleteGoalImplCopyWith(
          _$DeleteGoalImpl value, $Res Function(_$DeleteGoalImpl) then) =
      __$$DeleteGoalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteGoalImplCopyWithImpl<$Res>
    extends _$SavingsGoalEventCopyWithImpl<$Res, _$DeleteGoalImpl>
    implements _$$DeleteGoalImplCopyWith<$Res> {
  __$$DeleteGoalImplCopyWithImpl(
      _$DeleteGoalImpl _value, $Res Function(_$DeleteGoalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteGoalImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteGoalImpl implements _DeleteGoal {
  const _$DeleteGoalImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'SavingsGoalEvent.deleteGoal(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteGoalImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteGoalImplCopyWith<_$DeleteGoalImpl> get copyWith =>
      __$$DeleteGoalImplCopyWithImpl<_$DeleteGoalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGoals,
    required TResult Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)
        createGoal,
    required TResult Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)
        updateGoal,
    required TResult Function(int id) deleteGoal,
    required TResult Function(int id, bool isCompleted) markGoalCompleted,
    required TResult Function() clearError,
  }) {
    return deleteGoal(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGoals,
    TResult? Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        createGoal,
    TResult? Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        updateGoal,
    TResult? Function(int id)? deleteGoal,
    TResult? Function(int id, bool isCompleted)? markGoalCompleted,
    TResult? Function()? clearError,
  }) {
    return deleteGoal?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGoals,
    TResult Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        createGoal,
    TResult Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        updateGoal,
    TResult Function(int id)? deleteGoal,
    TResult Function(int id, bool isCompleted)? markGoalCompleted,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (deleteGoal != null) {
      return deleteGoal(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadGoals value) loadGoals,
    required TResult Function(_CreateGoal value) createGoal,
    required TResult Function(_UpdateGoal value) updateGoal,
    required TResult Function(_DeleteGoal value) deleteGoal,
    required TResult Function(_MarkGoalCompleted value) markGoalCompleted,
    required TResult Function(_ClearError value) clearError,
  }) {
    return deleteGoal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadGoals value)? loadGoals,
    TResult? Function(_CreateGoal value)? createGoal,
    TResult? Function(_UpdateGoal value)? updateGoal,
    TResult? Function(_DeleteGoal value)? deleteGoal,
    TResult? Function(_MarkGoalCompleted value)? markGoalCompleted,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return deleteGoal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadGoals value)? loadGoals,
    TResult Function(_CreateGoal value)? createGoal,
    TResult Function(_UpdateGoal value)? updateGoal,
    TResult Function(_DeleteGoal value)? deleteGoal,
    TResult Function(_MarkGoalCompleted value)? markGoalCompleted,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (deleteGoal != null) {
      return deleteGoal(this);
    }
    return orElse();
  }
}

abstract class _DeleteGoal implements SavingsGoalEvent {
  const factory _DeleteGoal(final int id) = _$DeleteGoalImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteGoalImplCopyWith<_$DeleteGoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkGoalCompletedImplCopyWith<$Res> {
  factory _$$MarkGoalCompletedImplCopyWith(_$MarkGoalCompletedImpl value,
          $Res Function(_$MarkGoalCompletedImpl) then) =
      __$$MarkGoalCompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, bool isCompleted});
}

/// @nodoc
class __$$MarkGoalCompletedImplCopyWithImpl<$Res>
    extends _$SavingsGoalEventCopyWithImpl<$Res, _$MarkGoalCompletedImpl>
    implements _$$MarkGoalCompletedImplCopyWith<$Res> {
  __$$MarkGoalCompletedImplCopyWithImpl(_$MarkGoalCompletedImpl _value,
      $Res Function(_$MarkGoalCompletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isCompleted = null,
  }) {
    return _then(_$MarkGoalCompletedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MarkGoalCompletedImpl implements _MarkGoalCompleted {
  const _$MarkGoalCompletedImpl({required this.id, required this.isCompleted});

  @override
  final int id;
  @override
  final bool isCompleted;

  @override
  String toString() {
    return 'SavingsGoalEvent.markGoalCompleted(id: $id, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkGoalCompletedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkGoalCompletedImplCopyWith<_$MarkGoalCompletedImpl> get copyWith =>
      __$$MarkGoalCompletedImplCopyWithImpl<_$MarkGoalCompletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGoals,
    required TResult Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)
        createGoal,
    required TResult Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)
        updateGoal,
    required TResult Function(int id) deleteGoal,
    required TResult Function(int id, bool isCompleted) markGoalCompleted,
    required TResult Function() clearError,
  }) {
    return markGoalCompleted(id, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGoals,
    TResult? Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        createGoal,
    TResult? Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        updateGoal,
    TResult? Function(int id)? deleteGoal,
    TResult? Function(int id, bool isCompleted)? markGoalCompleted,
    TResult? Function()? clearError,
  }) {
    return markGoalCompleted?.call(id, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGoals,
    TResult Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        createGoal,
    TResult Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        updateGoal,
    TResult Function(int id)? deleteGoal,
    TResult Function(int id, bool isCompleted)? markGoalCompleted,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (markGoalCompleted != null) {
      return markGoalCompleted(id, isCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadGoals value) loadGoals,
    required TResult Function(_CreateGoal value) createGoal,
    required TResult Function(_UpdateGoal value) updateGoal,
    required TResult Function(_DeleteGoal value) deleteGoal,
    required TResult Function(_MarkGoalCompleted value) markGoalCompleted,
    required TResult Function(_ClearError value) clearError,
  }) {
    return markGoalCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadGoals value)? loadGoals,
    TResult? Function(_CreateGoal value)? createGoal,
    TResult? Function(_UpdateGoal value)? updateGoal,
    TResult? Function(_DeleteGoal value)? deleteGoal,
    TResult? Function(_MarkGoalCompleted value)? markGoalCompleted,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return markGoalCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadGoals value)? loadGoals,
    TResult Function(_CreateGoal value)? createGoal,
    TResult Function(_UpdateGoal value)? updateGoal,
    TResult Function(_DeleteGoal value)? deleteGoal,
    TResult Function(_MarkGoalCompleted value)? markGoalCompleted,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (markGoalCompleted != null) {
      return markGoalCompleted(this);
    }
    return orElse();
  }
}

abstract class _MarkGoalCompleted implements SavingsGoalEvent {
  const factory _MarkGoalCompleted(
      {required final int id,
      required final bool isCompleted}) = _$MarkGoalCompletedImpl;

  int get id;
  bool get isCompleted;
  @JsonKey(ignore: true)
  _$$MarkGoalCompletedImplCopyWith<_$MarkGoalCompletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearErrorImplCopyWith<$Res> {
  factory _$$ClearErrorImplCopyWith(
          _$ClearErrorImpl value, $Res Function(_$ClearErrorImpl) then) =
      __$$ClearErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearErrorImplCopyWithImpl<$Res>
    extends _$SavingsGoalEventCopyWithImpl<$Res, _$ClearErrorImpl>
    implements _$$ClearErrorImplCopyWith<$Res> {
  __$$ClearErrorImplCopyWithImpl(
      _$ClearErrorImpl _value, $Res Function(_$ClearErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearErrorImpl implements _ClearError {
  const _$ClearErrorImpl();

  @override
  String toString() {
    return 'SavingsGoalEvent.clearError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGoals,
    required TResult Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)
        createGoal,
    required TResult Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)
        updateGoal,
    required TResult Function(int id) deleteGoal,
    required TResult Function(int id, bool isCompleted) markGoalCompleted,
    required TResult Function() clearError,
  }) {
    return clearError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGoals,
    TResult? Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        createGoal,
    TResult? Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        updateGoal,
    TResult? Function(int id)? deleteGoal,
    TResult? Function(int id, bool isCompleted)? markGoalCompleted,
    TResult? Function()? clearError,
  }) {
    return clearError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGoals,
    TResult Function(
            String name,
            double targetAmount,
            DateTime targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        createGoal,
    TResult Function(
            int id,
            String? name,
            double? currentAmount,
            DateTime? targetDate,
            String? categoryId,
            String? categoryIcon,
            String? categoryColor,
            String? notes,
            String? currency,
            bool isCompleted)?
        updateGoal,
    TResult Function(int id)? deleteGoal,
    TResult Function(int id, bool isCompleted)? markGoalCompleted,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadGoals value) loadGoals,
    required TResult Function(_CreateGoal value) createGoal,
    required TResult Function(_UpdateGoal value) updateGoal,
    required TResult Function(_DeleteGoal value) deleteGoal,
    required TResult Function(_MarkGoalCompleted value) markGoalCompleted,
    required TResult Function(_ClearError value) clearError,
  }) {
    return clearError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadGoals value)? loadGoals,
    TResult? Function(_CreateGoal value)? createGoal,
    TResult? Function(_UpdateGoal value)? updateGoal,
    TResult? Function(_DeleteGoal value)? deleteGoal,
    TResult? Function(_MarkGoalCompleted value)? markGoalCompleted,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return clearError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadGoals value)? loadGoals,
    TResult Function(_CreateGoal value)? createGoal,
    TResult Function(_UpdateGoal value)? updateGoal,
    TResult Function(_DeleteGoal value)? deleteGoal,
    TResult Function(_MarkGoalCompleted value)? markGoalCompleted,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError(this);
    }
    return orElse();
  }
}

abstract class _ClearError implements SavingsGoalEvent {
  const factory _ClearError() = _$ClearErrorImpl;
}
