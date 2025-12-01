// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'budget_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BudgetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? categoryId, DateTime? startDate, DateTime? endDate)
        loadBudgets,
    required TResult Function(
            String name,
            double amount,
            DateTime startDate,
            DateTime endDate,
            String? categoryId,
            String? notes,
            String? currency)
        createBudget,
    required TResult Function(
            int id,
            String? name,
            double? amount,
            DateTime? startDate,
            DateTime? endDate,
            String? categoryId,
            String? notes,
            String? currency)
        updateBudget,
    required TResult Function(int id) deleteBudget,
    required TResult Function() clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? categoryId, DateTime? startDate, DateTime? endDate)?
        loadBudgets,
    TResult? Function(
            String name,
            double amount,
            DateTime startDate,
            DateTime endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        createBudget,
    TResult? Function(
            int id,
            String? name,
            double? amount,
            DateTime? startDate,
            DateTime? endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        updateBudget,
    TResult? Function(int id)? deleteBudget,
    TResult? Function()? clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? categoryId, DateTime? startDate, DateTime? endDate)?
        loadBudgets,
    TResult Function(
            String name,
            double amount,
            DateTime startDate,
            DateTime endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        createBudget,
    TResult Function(
            int id,
            String? name,
            double? amount,
            DateTime? startDate,
            DateTime? endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        updateBudget,
    TResult Function(int id)? deleteBudget,
    TResult Function()? clearError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBudgets value) loadBudgets,
    required TResult Function(_CreateBudget value) createBudget,
    required TResult Function(_UpdateBudget value) updateBudget,
    required TResult Function(_DeleteBudget value) deleteBudget,
    required TResult Function(_ClearError value) clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBudgets value)? loadBudgets,
    TResult? Function(_CreateBudget value)? createBudget,
    TResult? Function(_UpdateBudget value)? updateBudget,
    TResult? Function(_DeleteBudget value)? deleteBudget,
    TResult? Function(_ClearError value)? clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBudgets value)? loadBudgets,
    TResult Function(_CreateBudget value)? createBudget,
    TResult Function(_UpdateBudget value)? updateBudget,
    TResult Function(_DeleteBudget value)? deleteBudget,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetEventCopyWith<$Res> {
  factory $BudgetEventCopyWith(
          BudgetEvent value, $Res Function(BudgetEvent) then) =
      _$BudgetEventCopyWithImpl<$Res, BudgetEvent>;
}

/// @nodoc
class _$BudgetEventCopyWithImpl<$Res, $Val extends BudgetEvent>
    implements $BudgetEventCopyWith<$Res> {
  _$BudgetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadBudgetsImplCopyWith<$Res> {
  factory _$$LoadBudgetsImplCopyWith(
          _$LoadBudgetsImpl value, $Res Function(_$LoadBudgetsImpl) then) =
      __$$LoadBudgetsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? categoryId, DateTime? startDate, DateTime? endDate});
}

/// @nodoc
class __$$LoadBudgetsImplCopyWithImpl<$Res>
    extends _$BudgetEventCopyWithImpl<$Res, _$LoadBudgetsImpl>
    implements _$$LoadBudgetsImplCopyWith<$Res> {
  __$$LoadBudgetsImplCopyWithImpl(
      _$LoadBudgetsImpl _value, $Res Function(_$LoadBudgetsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$LoadBudgetsImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$LoadBudgetsImpl implements _LoadBudgets {
  const _$LoadBudgetsImpl({this.categoryId, this.startDate, this.endDate});

  @override
  final String? categoryId;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;

  @override
  String toString() {
    return 'BudgetEvent.loadBudgets(categoryId: $categoryId, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadBudgetsImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadBudgetsImplCopyWith<_$LoadBudgetsImpl> get copyWith =>
      __$$LoadBudgetsImplCopyWithImpl<_$LoadBudgetsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? categoryId, DateTime? startDate, DateTime? endDate)
        loadBudgets,
    required TResult Function(
            String name,
            double amount,
            DateTime startDate,
            DateTime endDate,
            String? categoryId,
            String? notes,
            String? currency)
        createBudget,
    required TResult Function(
            int id,
            String? name,
            double? amount,
            DateTime? startDate,
            DateTime? endDate,
            String? categoryId,
            String? notes,
            String? currency)
        updateBudget,
    required TResult Function(int id) deleteBudget,
    required TResult Function() clearError,
  }) {
    return loadBudgets(categoryId, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? categoryId, DateTime? startDate, DateTime? endDate)?
        loadBudgets,
    TResult? Function(
            String name,
            double amount,
            DateTime startDate,
            DateTime endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        createBudget,
    TResult? Function(
            int id,
            String? name,
            double? amount,
            DateTime? startDate,
            DateTime? endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        updateBudget,
    TResult? Function(int id)? deleteBudget,
    TResult? Function()? clearError,
  }) {
    return loadBudgets?.call(categoryId, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? categoryId, DateTime? startDate, DateTime? endDate)?
        loadBudgets,
    TResult Function(
            String name,
            double amount,
            DateTime startDate,
            DateTime endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        createBudget,
    TResult Function(
            int id,
            String? name,
            double? amount,
            DateTime? startDate,
            DateTime? endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        updateBudget,
    TResult Function(int id)? deleteBudget,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (loadBudgets != null) {
      return loadBudgets(categoryId, startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBudgets value) loadBudgets,
    required TResult Function(_CreateBudget value) createBudget,
    required TResult Function(_UpdateBudget value) updateBudget,
    required TResult Function(_DeleteBudget value) deleteBudget,
    required TResult Function(_ClearError value) clearError,
  }) {
    return loadBudgets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBudgets value)? loadBudgets,
    TResult? Function(_CreateBudget value)? createBudget,
    TResult? Function(_UpdateBudget value)? updateBudget,
    TResult? Function(_DeleteBudget value)? deleteBudget,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return loadBudgets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBudgets value)? loadBudgets,
    TResult Function(_CreateBudget value)? createBudget,
    TResult Function(_UpdateBudget value)? updateBudget,
    TResult Function(_DeleteBudget value)? deleteBudget,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (loadBudgets != null) {
      return loadBudgets(this);
    }
    return orElse();
  }
}

abstract class _LoadBudgets implements BudgetEvent {
  const factory _LoadBudgets(
      {final String? categoryId,
      final DateTime? startDate,
      final DateTime? endDate}) = _$LoadBudgetsImpl;

  String? get categoryId;
  DateTime? get startDate;
  DateTime? get endDate;
  @JsonKey(ignore: true)
  _$$LoadBudgetsImplCopyWith<_$LoadBudgetsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateBudgetImplCopyWith<$Res> {
  factory _$$CreateBudgetImplCopyWith(
          _$CreateBudgetImpl value, $Res Function(_$CreateBudgetImpl) then) =
      __$$CreateBudgetImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      double amount,
      DateTime startDate,
      DateTime endDate,
      String? categoryId,
      String? notes,
      String? currency});
}

/// @nodoc
class __$$CreateBudgetImplCopyWithImpl<$Res>
    extends _$BudgetEventCopyWithImpl<$Res, _$CreateBudgetImpl>
    implements _$$CreateBudgetImplCopyWith<$Res> {
  __$$CreateBudgetImplCopyWithImpl(
      _$CreateBudgetImpl _value, $Res Function(_$CreateBudgetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? categoryId = freezed,
    Object? notes = freezed,
    Object? currency = freezed,
  }) {
    return _then(_$CreateBudgetImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$CreateBudgetImpl implements _CreateBudget {
  const _$CreateBudgetImpl(
      {required this.name,
      required this.amount,
      required this.startDate,
      required this.endDate,
      this.categoryId,
      this.notes,
      this.currency});

  @override
  final String name;
  @override
  final double amount;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String? categoryId;
  @override
  final String? notes;
  @override
  final String? currency;

  @override
  String toString() {
    return 'BudgetEvent.createBudget(name: $name, amount: $amount, startDate: $startDate, endDate: $endDate, categoryId: $categoryId, notes: $notes, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBudgetImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, amount, startDate, endDate,
      categoryId, notes, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBudgetImplCopyWith<_$CreateBudgetImpl> get copyWith =>
      __$$CreateBudgetImplCopyWithImpl<_$CreateBudgetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? categoryId, DateTime? startDate, DateTime? endDate)
        loadBudgets,
    required TResult Function(
            String name,
            double amount,
            DateTime startDate,
            DateTime endDate,
            String? categoryId,
            String? notes,
            String? currency)
        createBudget,
    required TResult Function(
            int id,
            String? name,
            double? amount,
            DateTime? startDate,
            DateTime? endDate,
            String? categoryId,
            String? notes,
            String? currency)
        updateBudget,
    required TResult Function(int id) deleteBudget,
    required TResult Function() clearError,
  }) {
    return createBudget(
        name, amount, startDate, endDate, categoryId, notes, currency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? categoryId, DateTime? startDate, DateTime? endDate)?
        loadBudgets,
    TResult? Function(
            String name,
            double amount,
            DateTime startDate,
            DateTime endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        createBudget,
    TResult? Function(
            int id,
            String? name,
            double? amount,
            DateTime? startDate,
            DateTime? endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        updateBudget,
    TResult? Function(int id)? deleteBudget,
    TResult? Function()? clearError,
  }) {
    return createBudget?.call(
        name, amount, startDate, endDate, categoryId, notes, currency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? categoryId, DateTime? startDate, DateTime? endDate)?
        loadBudgets,
    TResult Function(
            String name,
            double amount,
            DateTime startDate,
            DateTime endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        createBudget,
    TResult Function(
            int id,
            String? name,
            double? amount,
            DateTime? startDate,
            DateTime? endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        updateBudget,
    TResult Function(int id)? deleteBudget,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (createBudget != null) {
      return createBudget(
          name, amount, startDate, endDate, categoryId, notes, currency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBudgets value) loadBudgets,
    required TResult Function(_CreateBudget value) createBudget,
    required TResult Function(_UpdateBudget value) updateBudget,
    required TResult Function(_DeleteBudget value) deleteBudget,
    required TResult Function(_ClearError value) clearError,
  }) {
    return createBudget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBudgets value)? loadBudgets,
    TResult? Function(_CreateBudget value)? createBudget,
    TResult? Function(_UpdateBudget value)? updateBudget,
    TResult? Function(_DeleteBudget value)? deleteBudget,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return createBudget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBudgets value)? loadBudgets,
    TResult Function(_CreateBudget value)? createBudget,
    TResult Function(_UpdateBudget value)? updateBudget,
    TResult Function(_DeleteBudget value)? deleteBudget,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (createBudget != null) {
      return createBudget(this);
    }
    return orElse();
  }
}

abstract class _CreateBudget implements BudgetEvent {
  const factory _CreateBudget(
      {required final String name,
      required final double amount,
      required final DateTime startDate,
      required final DateTime endDate,
      final String? categoryId,
      final String? notes,
      final String? currency}) = _$CreateBudgetImpl;

  String get name;
  double get amount;
  DateTime get startDate;
  DateTime get endDate;
  String? get categoryId;
  String? get notes;
  String? get currency;
  @JsonKey(ignore: true)
  _$$CreateBudgetImplCopyWith<_$CreateBudgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBudgetImplCopyWith<$Res> {
  factory _$$UpdateBudgetImplCopyWith(
          _$UpdateBudgetImpl value, $Res Function(_$UpdateBudgetImpl) then) =
      __$$UpdateBudgetImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String? name,
      double? amount,
      DateTime? startDate,
      DateTime? endDate,
      String? categoryId,
      String? notes,
      String? currency});
}

/// @nodoc
class __$$UpdateBudgetImplCopyWithImpl<$Res>
    extends _$BudgetEventCopyWithImpl<$Res, _$UpdateBudgetImpl>
    implements _$$UpdateBudgetImplCopyWith<$Res> {
  __$$UpdateBudgetImplCopyWithImpl(
      _$UpdateBudgetImpl _value, $Res Function(_$UpdateBudgetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? amount = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? categoryId = freezed,
    Object? notes = freezed,
    Object? currency = freezed,
  }) {
    return _then(_$UpdateBudgetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$UpdateBudgetImpl implements _UpdateBudget {
  const _$UpdateBudgetImpl(
      {required this.id,
      this.name,
      this.amount,
      this.startDate,
      this.endDate,
      this.categoryId,
      this.notes,
      this.currency});

  @override
  final int id;
  @override
  final String? name;
  @override
  final double? amount;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? categoryId;
  @override
  final String? notes;
  @override
  final String? currency;

  @override
  String toString() {
    return 'BudgetEvent.updateBudget(id: $id, name: $name, amount: $amount, startDate: $startDate, endDate: $endDate, categoryId: $categoryId, notes: $notes, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBudgetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, amount, startDate,
      endDate, categoryId, notes, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBudgetImplCopyWith<_$UpdateBudgetImpl> get copyWith =>
      __$$UpdateBudgetImplCopyWithImpl<_$UpdateBudgetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? categoryId, DateTime? startDate, DateTime? endDate)
        loadBudgets,
    required TResult Function(
            String name,
            double amount,
            DateTime startDate,
            DateTime endDate,
            String? categoryId,
            String? notes,
            String? currency)
        createBudget,
    required TResult Function(
            int id,
            String? name,
            double? amount,
            DateTime? startDate,
            DateTime? endDate,
            String? categoryId,
            String? notes,
            String? currency)
        updateBudget,
    required TResult Function(int id) deleteBudget,
    required TResult Function() clearError,
  }) {
    return updateBudget(
        id, name, amount, startDate, endDate, categoryId, notes, currency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? categoryId, DateTime? startDate, DateTime? endDate)?
        loadBudgets,
    TResult? Function(
            String name,
            double amount,
            DateTime startDate,
            DateTime endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        createBudget,
    TResult? Function(
            int id,
            String? name,
            double? amount,
            DateTime? startDate,
            DateTime? endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        updateBudget,
    TResult? Function(int id)? deleteBudget,
    TResult? Function()? clearError,
  }) {
    return updateBudget?.call(
        id, name, amount, startDate, endDate, categoryId, notes, currency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? categoryId, DateTime? startDate, DateTime? endDate)?
        loadBudgets,
    TResult Function(
            String name,
            double amount,
            DateTime startDate,
            DateTime endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        createBudget,
    TResult Function(
            int id,
            String? name,
            double? amount,
            DateTime? startDate,
            DateTime? endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        updateBudget,
    TResult Function(int id)? deleteBudget,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (updateBudget != null) {
      return updateBudget(
          id, name, amount, startDate, endDate, categoryId, notes, currency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBudgets value) loadBudgets,
    required TResult Function(_CreateBudget value) createBudget,
    required TResult Function(_UpdateBudget value) updateBudget,
    required TResult Function(_DeleteBudget value) deleteBudget,
    required TResult Function(_ClearError value) clearError,
  }) {
    return updateBudget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBudgets value)? loadBudgets,
    TResult? Function(_CreateBudget value)? createBudget,
    TResult? Function(_UpdateBudget value)? updateBudget,
    TResult? Function(_DeleteBudget value)? deleteBudget,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return updateBudget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBudgets value)? loadBudgets,
    TResult Function(_CreateBudget value)? createBudget,
    TResult Function(_UpdateBudget value)? updateBudget,
    TResult Function(_DeleteBudget value)? deleteBudget,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (updateBudget != null) {
      return updateBudget(this);
    }
    return orElse();
  }
}

abstract class _UpdateBudget implements BudgetEvent {
  const factory _UpdateBudget(
      {required final int id,
      final String? name,
      final double? amount,
      final DateTime? startDate,
      final DateTime? endDate,
      final String? categoryId,
      final String? notes,
      final String? currency}) = _$UpdateBudgetImpl;

  int get id;
  String? get name;
  double? get amount;
  DateTime? get startDate;
  DateTime? get endDate;
  String? get categoryId;
  String? get notes;
  String? get currency;
  @JsonKey(ignore: true)
  _$$UpdateBudgetImplCopyWith<_$UpdateBudgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBudgetImplCopyWith<$Res> {
  factory _$$DeleteBudgetImplCopyWith(
          _$DeleteBudgetImpl value, $Res Function(_$DeleteBudgetImpl) then) =
      __$$DeleteBudgetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteBudgetImplCopyWithImpl<$Res>
    extends _$BudgetEventCopyWithImpl<$Res, _$DeleteBudgetImpl>
    implements _$$DeleteBudgetImplCopyWith<$Res> {
  __$$DeleteBudgetImplCopyWithImpl(
      _$DeleteBudgetImpl _value, $Res Function(_$DeleteBudgetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteBudgetImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteBudgetImpl implements _DeleteBudget {
  const _$DeleteBudgetImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'BudgetEvent.deleteBudget(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBudgetImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBudgetImplCopyWith<_$DeleteBudgetImpl> get copyWith =>
      __$$DeleteBudgetImplCopyWithImpl<_$DeleteBudgetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? categoryId, DateTime? startDate, DateTime? endDate)
        loadBudgets,
    required TResult Function(
            String name,
            double amount,
            DateTime startDate,
            DateTime endDate,
            String? categoryId,
            String? notes,
            String? currency)
        createBudget,
    required TResult Function(
            int id,
            String? name,
            double? amount,
            DateTime? startDate,
            DateTime? endDate,
            String? categoryId,
            String? notes,
            String? currency)
        updateBudget,
    required TResult Function(int id) deleteBudget,
    required TResult Function() clearError,
  }) {
    return deleteBudget(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? categoryId, DateTime? startDate, DateTime? endDate)?
        loadBudgets,
    TResult? Function(
            String name,
            double amount,
            DateTime startDate,
            DateTime endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        createBudget,
    TResult? Function(
            int id,
            String? name,
            double? amount,
            DateTime? startDate,
            DateTime? endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        updateBudget,
    TResult? Function(int id)? deleteBudget,
    TResult? Function()? clearError,
  }) {
    return deleteBudget?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? categoryId, DateTime? startDate, DateTime? endDate)?
        loadBudgets,
    TResult Function(
            String name,
            double amount,
            DateTime startDate,
            DateTime endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        createBudget,
    TResult Function(
            int id,
            String? name,
            double? amount,
            DateTime? startDate,
            DateTime? endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        updateBudget,
    TResult Function(int id)? deleteBudget,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (deleteBudget != null) {
      return deleteBudget(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBudgets value) loadBudgets,
    required TResult Function(_CreateBudget value) createBudget,
    required TResult Function(_UpdateBudget value) updateBudget,
    required TResult Function(_DeleteBudget value) deleteBudget,
    required TResult Function(_ClearError value) clearError,
  }) {
    return deleteBudget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBudgets value)? loadBudgets,
    TResult? Function(_CreateBudget value)? createBudget,
    TResult? Function(_UpdateBudget value)? updateBudget,
    TResult? Function(_DeleteBudget value)? deleteBudget,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return deleteBudget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBudgets value)? loadBudgets,
    TResult Function(_CreateBudget value)? createBudget,
    TResult Function(_UpdateBudget value)? updateBudget,
    TResult Function(_DeleteBudget value)? deleteBudget,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (deleteBudget != null) {
      return deleteBudget(this);
    }
    return orElse();
  }
}

abstract class _DeleteBudget implements BudgetEvent {
  const factory _DeleteBudget(final int id) = _$DeleteBudgetImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteBudgetImplCopyWith<_$DeleteBudgetImpl> get copyWith =>
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
    extends _$BudgetEventCopyWithImpl<$Res, _$ClearErrorImpl>
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
    return 'BudgetEvent.clearError()';
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
    required TResult Function(
            String? categoryId, DateTime? startDate, DateTime? endDate)
        loadBudgets,
    required TResult Function(
            String name,
            double amount,
            DateTime startDate,
            DateTime endDate,
            String? categoryId,
            String? notes,
            String? currency)
        createBudget,
    required TResult Function(
            int id,
            String? name,
            double? amount,
            DateTime? startDate,
            DateTime? endDate,
            String? categoryId,
            String? notes,
            String? currency)
        updateBudget,
    required TResult Function(int id) deleteBudget,
    required TResult Function() clearError,
  }) {
    return clearError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? categoryId, DateTime? startDate, DateTime? endDate)?
        loadBudgets,
    TResult? Function(
            String name,
            double amount,
            DateTime startDate,
            DateTime endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        createBudget,
    TResult? Function(
            int id,
            String? name,
            double? amount,
            DateTime? startDate,
            DateTime? endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        updateBudget,
    TResult? Function(int id)? deleteBudget,
    TResult? Function()? clearError,
  }) {
    return clearError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? categoryId, DateTime? startDate, DateTime? endDate)?
        loadBudgets,
    TResult Function(
            String name,
            double amount,
            DateTime startDate,
            DateTime endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        createBudget,
    TResult Function(
            int id,
            String? name,
            double? amount,
            DateTime? startDate,
            DateTime? endDate,
            String? categoryId,
            String? notes,
            String? currency)?
        updateBudget,
    TResult Function(int id)? deleteBudget,
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
    required TResult Function(_LoadBudgets value) loadBudgets,
    required TResult Function(_CreateBudget value) createBudget,
    required TResult Function(_UpdateBudget value) updateBudget,
    required TResult Function(_DeleteBudget value) deleteBudget,
    required TResult Function(_ClearError value) clearError,
  }) {
    return clearError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBudgets value)? loadBudgets,
    TResult? Function(_CreateBudget value)? createBudget,
    TResult? Function(_UpdateBudget value)? updateBudget,
    TResult? Function(_DeleteBudget value)? deleteBudget,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return clearError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBudgets value)? loadBudgets,
    TResult Function(_CreateBudget value)? createBudget,
    TResult Function(_UpdateBudget value)? updateBudget,
    TResult Function(_DeleteBudget value)? deleteBudget,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError(this);
    }
    return orElse();
  }
}

abstract class _ClearError implements BudgetEvent {
  const factory _ClearError() = _$ClearErrorImpl;
}

/// @nodoc
mixin _$BudgetState {
  List<Budget> get budgets => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  Budget? get selectedBudget => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BudgetStateCopyWith<BudgetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetStateCopyWith<$Res> {
  factory $BudgetStateCopyWith(
          BudgetState value, $Res Function(BudgetState) then) =
      _$BudgetStateCopyWithImpl<$Res, BudgetState>;
  @useResult
  $Res call(
      {List<Budget> budgets,
      bool isLoading,
      bool hasReachedMax,
      int currentPage,
      int limit,
      Failure? failure,
      Budget? selectedBudget});

  $BudgetCopyWith<$Res>? get selectedBudget;
}

/// @nodoc
class _$BudgetStateCopyWithImpl<$Res, $Val extends BudgetState>
    implements $BudgetStateCopyWith<$Res> {
  _$BudgetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? budgets = null,
    Object? isLoading = null,
    Object? hasReachedMax = null,
    Object? currentPage = null,
    Object? limit = null,
    Object? failure = freezed,
    Object? selectedBudget = freezed,
  }) {
    return _then(_value.copyWith(
      budgets: null == budgets
          ? _value.budgets
          : budgets // ignore: cast_nullable_to_non_nullable
              as List<Budget>,
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
      selectedBudget: freezed == selectedBudget
          ? _value.selectedBudget
          : selectedBudget // ignore: cast_nullable_to_non_nullable
              as Budget?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BudgetCopyWith<$Res>? get selectedBudget {
    if (_value.selectedBudget == null) {
      return null;
    }

    return $BudgetCopyWith<$Res>(_value.selectedBudget!, (value) {
      return _then(_value.copyWith(selectedBudget: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BudgetStateImplCopyWith<$Res>
    implements $BudgetStateCopyWith<$Res> {
  factory _$$BudgetStateImplCopyWith(
          _$BudgetStateImpl value, $Res Function(_$BudgetStateImpl) then) =
      __$$BudgetStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Budget> budgets,
      bool isLoading,
      bool hasReachedMax,
      int currentPage,
      int limit,
      Failure? failure,
      Budget? selectedBudget});

  @override
  $BudgetCopyWith<$Res>? get selectedBudget;
}

/// @nodoc
class __$$BudgetStateImplCopyWithImpl<$Res>
    extends _$BudgetStateCopyWithImpl<$Res, _$BudgetStateImpl>
    implements _$$BudgetStateImplCopyWith<$Res> {
  __$$BudgetStateImplCopyWithImpl(
      _$BudgetStateImpl _value, $Res Function(_$BudgetStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? budgets = null,
    Object? isLoading = null,
    Object? hasReachedMax = null,
    Object? currentPage = null,
    Object? limit = null,
    Object? failure = freezed,
    Object? selectedBudget = freezed,
  }) {
    return _then(_$BudgetStateImpl(
      budgets: null == budgets
          ? _value._budgets
          : budgets // ignore: cast_nullable_to_non_nullable
              as List<Budget>,
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
      selectedBudget: freezed == selectedBudget
          ? _value.selectedBudget
          : selectedBudget // ignore: cast_nullable_to_non_nullable
              as Budget?,
    ));
  }
}

/// @nodoc

class _$BudgetStateImpl implements _BudgetState {
  const _$BudgetStateImpl(
      {final List<Budget> budgets = const [],
      this.isLoading = false,
      this.hasReachedMax = false,
      this.currentPage = 0,
      this.limit = 20,
      this.failure,
      this.selectedBudget})
      : _budgets = budgets;

  final List<Budget> _budgets;
  @override
  @JsonKey()
  List<Budget> get budgets {
    if (_budgets is EqualUnmodifiableListView) return _budgets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_budgets);
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
  final Budget? selectedBudget;

  @override
  String toString() {
    return 'BudgetState(budgets: $budgets, isLoading: $isLoading, hasReachedMax: $hasReachedMax, currentPage: $currentPage, limit: $limit, failure: $failure, selectedBudget: $selectedBudget)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetStateImpl &&
            const DeepCollectionEquality().equals(other._budgets, _budgets) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.selectedBudget, selectedBudget) ||
                other.selectedBudget == selectedBudget));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_budgets),
      isLoading,
      hasReachedMax,
      currentPage,
      limit,
      failure,
      selectedBudget);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetStateImplCopyWith<_$BudgetStateImpl> get copyWith =>
      __$$BudgetStateImplCopyWithImpl<_$BudgetStateImpl>(this, _$identity);
}

abstract class _BudgetState implements BudgetState {
  const factory _BudgetState(
      {final List<Budget> budgets,
      final bool isLoading,
      final bool hasReachedMax,
      final int currentPage,
      final int limit,
      final Failure? failure,
      final Budget? selectedBudget}) = _$BudgetStateImpl;

  @override
  List<Budget> get budgets;
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
  Budget? get selectedBudget;
  @override
  @JsonKey(ignore: true)
  _$$BudgetStateImplCopyWith<_$BudgetStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
