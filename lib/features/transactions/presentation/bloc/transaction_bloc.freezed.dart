// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? accountId, String? categoryId,
            String? type, DateTime? startDate, DateTime? endDate)
        loadTransactions,
    required TResult Function(
            double amount,
            String description,
            String type,
            String categoryId,
            String accountId,
            String? notes,
            Map<String, dynamic>? metadata)
        createTransaction,
    required TResult Function(
            int id,
            double? amount,
            String? description,
            String? type,
            String? categoryId,
            String? accountId,
            DateTime? date,
            String? notes,
            Map<String, dynamic>? metadata)
        updateTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function() clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? accountId, String? categoryId, String? type,
            DateTime? startDate, DateTime? endDate)?
        loadTransactions,
    TResult? Function(
            double amount,
            String description,
            String type,
            String categoryId,
            String accountId,
            String? notes,
            Map<String, dynamic>? metadata)?
        createTransaction,
    TResult? Function(
            int id,
            double? amount,
            String? description,
            String? type,
            String? categoryId,
            String? accountId,
            DateTime? date,
            String? notes,
            Map<String, dynamic>? metadata)?
        updateTransaction,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function()? clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? accountId, String? categoryId, String? type,
            DateTime? startDate, DateTime? endDate)?
        loadTransactions,
    TResult Function(
            double amount,
            String description,
            String type,
            String categoryId,
            String accountId,
            String? notes,
            Map<String, dynamic>? metadata)?
        createTransaction,
    TResult Function(
            int id,
            double? amount,
            String? description,
            String? type,
            String? categoryId,
            String? accountId,
            DateTime? date,
            String? notes,
            Map<String, dynamic>? metadata)?
        updateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function()? clearError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTransactions value) loadTransactions,
    required TResult Function(_CreateTransaction value) createTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_ClearError value) clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTransactions value)? loadTransactions,
    TResult? Function(_CreateTransaction value)? createTransaction,
    TResult? Function(_UpdateTransaction value)? updateTransaction,
    TResult? Function(_DeleteTransaction value)? deleteTransaction,
    TResult? Function(_ClearError value)? clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTransactions value)? loadTransactions,
    TResult Function(_CreateTransaction value)? createTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res, TransactionEvent>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res, $Val extends TransactionEvent>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadTransactionsImplCopyWith<$Res> {
  factory _$$LoadTransactionsImplCopyWith(_$LoadTransactionsImpl value,
          $Res Function(_$LoadTransactionsImpl) then) =
      __$$LoadTransactionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? accountId,
      String? categoryId,
      String? type,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class __$$LoadTransactionsImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$LoadTransactionsImpl>
    implements _$$LoadTransactionsImplCopyWith<$Res> {
  __$$LoadTransactionsImplCopyWithImpl(_$LoadTransactionsImpl _value,
      $Res Function(_$LoadTransactionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? categoryId = freezed,
    Object? type = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$LoadTransactionsImpl(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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

class _$LoadTransactionsImpl implements _LoadTransactions {
  const _$LoadTransactionsImpl(
      {this.accountId,
      this.categoryId,
      this.type,
      this.startDate,
      this.endDate});

  @override
  final String? accountId;
  @override
  final String? categoryId;
  @override
  final String? type;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;

  @override
  String toString() {
    return 'TransactionEvent.loadTransactions(accountId: $accountId, categoryId: $categoryId, type: $type, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTransactionsImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, accountId, categoryId, type, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTransactionsImplCopyWith<_$LoadTransactionsImpl> get copyWith =>
      __$$LoadTransactionsImplCopyWithImpl<_$LoadTransactionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? accountId, String? categoryId,
            String? type, DateTime? startDate, DateTime? endDate)
        loadTransactions,
    required TResult Function(
            double amount,
            String description,
            String type,
            String categoryId,
            String accountId,
            String? notes,
            Map<String, dynamic>? metadata)
        createTransaction,
    required TResult Function(
            int id,
            double? amount,
            String? description,
            String? type,
            String? categoryId,
            String? accountId,
            DateTime? date,
            String? notes,
            Map<String, dynamic>? metadata)
        updateTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function() clearError,
  }) {
    return loadTransactions(accountId, categoryId, type, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? accountId, String? categoryId, String? type,
            DateTime? startDate, DateTime? endDate)?
        loadTransactions,
    TResult? Function(
            double amount,
            String description,
            String type,
            String categoryId,
            String accountId,
            String? notes,
            Map<String, dynamic>? metadata)?
        createTransaction,
    TResult? Function(
            int id,
            double? amount,
            String? description,
            String? type,
            String? categoryId,
            String? accountId,
            DateTime? date,
            String? notes,
            Map<String, dynamic>? metadata)?
        updateTransaction,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function()? clearError,
  }) {
    return loadTransactions?.call(
        accountId, categoryId, type, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? accountId, String? categoryId, String? type,
            DateTime? startDate, DateTime? endDate)?
        loadTransactions,
    TResult Function(
            double amount,
            String description,
            String type,
            String categoryId,
            String accountId,
            String? notes,
            Map<String, dynamic>? metadata)?
        createTransaction,
    TResult Function(
            int id,
            double? amount,
            String? description,
            String? type,
            String? categoryId,
            String? accountId,
            DateTime? date,
            String? notes,
            Map<String, dynamic>? metadata)?
        updateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (loadTransactions != null) {
      return loadTransactions(accountId, categoryId, type, startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTransactions value) loadTransactions,
    required TResult Function(_CreateTransaction value) createTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_ClearError value) clearError,
  }) {
    return loadTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTransactions value)? loadTransactions,
    TResult? Function(_CreateTransaction value)? createTransaction,
    TResult? Function(_UpdateTransaction value)? updateTransaction,
    TResult? Function(_DeleteTransaction value)? deleteTransaction,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return loadTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTransactions value)? loadTransactions,
    TResult Function(_CreateTransaction value)? createTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (loadTransactions != null) {
      return loadTransactions(this);
    }
    return orElse();
  }
}

abstract class _LoadTransactions implements TransactionEvent {
  const factory _LoadTransactions(
      {final String? accountId,
      final String? categoryId,
      final String? type,
      final DateTime? startDate,
      final DateTime? endDate}) = _$LoadTransactionsImpl;

  String? get accountId;
  String? get categoryId;
  String? get type;
  DateTime? get startDate;
  DateTime? get endDate;
  @JsonKey(ignore: true)
  _$$LoadTransactionsImplCopyWith<_$LoadTransactionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateTransactionImplCopyWith<$Res> {
  factory _$$CreateTransactionImplCopyWith(_$CreateTransactionImpl value,
          $Res Function(_$CreateTransactionImpl) then) =
      __$$CreateTransactionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {double amount,
      String description,
      String type,
      String categoryId,
      String accountId,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$CreateTransactionImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$CreateTransactionImpl>
    implements _$$CreateTransactionImplCopyWith<$Res> {
  __$$CreateTransactionImplCopyWithImpl(_$CreateTransactionImpl _value,
      $Res Function(_$CreateTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? description = null,
    Object? type = null,
    Object? categoryId = null,
    Object? accountId = null,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$CreateTransactionImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$CreateTransactionImpl implements _CreateTransaction {
  const _$CreateTransactionImpl(
      {required this.amount,
      required this.description,
      required this.type,
      required this.categoryId,
      required this.accountId,
      this.notes,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  @override
  final double amount;
  @override
  final String description;
  @override
  final String type;
  @override
  final String categoryId;
  @override
  final String accountId;
  @override
  final String? notes;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'TransactionEvent.createTransaction(amount: $amount, description: $description, type: $type, categoryId: $categoryId, accountId: $accountId, notes: $notes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTransactionImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      amount,
      description,
      type,
      categoryId,
      accountId,
      notes,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTransactionImplCopyWith<_$CreateTransactionImpl> get copyWith =>
      __$$CreateTransactionImplCopyWithImpl<_$CreateTransactionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? accountId, String? categoryId,
            String? type, DateTime? startDate, DateTime? endDate)
        loadTransactions,
    required TResult Function(
            double amount,
            String description,
            String type,
            String categoryId,
            String accountId,
            String? notes,
            Map<String, dynamic>? metadata)
        createTransaction,
    required TResult Function(
            int id,
            double? amount,
            String? description,
            String? type,
            String? categoryId,
            String? accountId,
            DateTime? date,
            String? notes,
            Map<String, dynamic>? metadata)
        updateTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function() clearError,
  }) {
    return createTransaction(
        amount, description, type, categoryId, accountId, notes, metadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? accountId, String? categoryId, String? type,
            DateTime? startDate, DateTime? endDate)?
        loadTransactions,
    TResult? Function(
            double amount,
            String description,
            String type,
            String categoryId,
            String accountId,
            String? notes,
            Map<String, dynamic>? metadata)?
        createTransaction,
    TResult? Function(
            int id,
            double? amount,
            String? description,
            String? type,
            String? categoryId,
            String? accountId,
            DateTime? date,
            String? notes,
            Map<String, dynamic>? metadata)?
        updateTransaction,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function()? clearError,
  }) {
    return createTransaction?.call(
        amount, description, type, categoryId, accountId, notes, metadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? accountId, String? categoryId, String? type,
            DateTime? startDate, DateTime? endDate)?
        loadTransactions,
    TResult Function(
            double amount,
            String description,
            String type,
            String categoryId,
            String accountId,
            String? notes,
            Map<String, dynamic>? metadata)?
        createTransaction,
    TResult Function(
            int id,
            double? amount,
            String? description,
            String? type,
            String? categoryId,
            String? accountId,
            DateTime? date,
            String? notes,
            Map<String, dynamic>? metadata)?
        updateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (createTransaction != null) {
      return createTransaction(
          amount, description, type, categoryId, accountId, notes, metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTransactions value) loadTransactions,
    required TResult Function(_CreateTransaction value) createTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_ClearError value) clearError,
  }) {
    return createTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTransactions value)? loadTransactions,
    TResult? Function(_CreateTransaction value)? createTransaction,
    TResult? Function(_UpdateTransaction value)? updateTransaction,
    TResult? Function(_DeleteTransaction value)? deleteTransaction,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return createTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTransactions value)? loadTransactions,
    TResult Function(_CreateTransaction value)? createTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (createTransaction != null) {
      return createTransaction(this);
    }
    return orElse();
  }
}

abstract class _CreateTransaction implements TransactionEvent {
  const factory _CreateTransaction(
      {required final double amount,
      required final String description,
      required final String type,
      required final String categoryId,
      required final String accountId,
      final String? notes,
      final Map<String, dynamic>? metadata}) = _$CreateTransactionImpl;

  double get amount;
  String get description;
  String get type;
  String get categoryId;
  String get accountId;
  String? get notes;
  Map<String, dynamic>? get metadata;
  @JsonKey(ignore: true)
  _$$CreateTransactionImplCopyWith<_$CreateTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTransactionImplCopyWith<$Res> {
  factory _$$UpdateTransactionImplCopyWith(_$UpdateTransactionImpl value,
          $Res Function(_$UpdateTransactionImpl) then) =
      __$$UpdateTransactionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      double? amount,
      String? description,
      String? type,
      String? categoryId,
      String? accountId,
      DateTime? date,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$UpdateTransactionImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$UpdateTransactionImpl>
    implements _$$UpdateTransactionImplCopyWith<$Res> {
  __$$UpdateTransactionImplCopyWithImpl(_$UpdateTransactionImpl _value,
      $Res Function(_$UpdateTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? categoryId = freezed,
    Object? accountId = freezed,
    Object? date = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UpdateTransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$UpdateTransactionImpl implements _UpdateTransaction {
  const _$UpdateTransactionImpl(
      {required this.id,
      this.amount,
      this.description,
      this.type,
      this.categoryId,
      this.accountId,
      this.date,
      this.notes,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  @override
  final int id;
  @override
  final double? amount;
  @override
  final String? description;
  @override
  final String? type;
  @override
  final String? categoryId;
  @override
  final String? accountId;
  @override
  final DateTime? date;
  @override
  final String? notes;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'TransactionEvent.updateTransaction(id: $id, amount: $amount, description: $description, type: $type, categoryId: $categoryId, accountId: $accountId, date: $date, notes: $notes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      amount,
      description,
      type,
      categoryId,
      accountId,
      date,
      notes,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTransactionImplCopyWith<_$UpdateTransactionImpl> get copyWith =>
      __$$UpdateTransactionImplCopyWithImpl<_$UpdateTransactionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? accountId, String? categoryId,
            String? type, DateTime? startDate, DateTime? endDate)
        loadTransactions,
    required TResult Function(
            double amount,
            String description,
            String type,
            String categoryId,
            String accountId,
            String? notes,
            Map<String, dynamic>? metadata)
        createTransaction,
    required TResult Function(
            int id,
            double? amount,
            String? description,
            String? type,
            String? categoryId,
            String? accountId,
            DateTime? date,
            String? notes,
            Map<String, dynamic>? metadata)
        updateTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function() clearError,
  }) {
    return updateTransaction(id, amount, description, type, categoryId,
        accountId, date, notes, metadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? accountId, String? categoryId, String? type,
            DateTime? startDate, DateTime? endDate)?
        loadTransactions,
    TResult? Function(
            double amount,
            String description,
            String type,
            String categoryId,
            String accountId,
            String? notes,
            Map<String, dynamic>? metadata)?
        createTransaction,
    TResult? Function(
            int id,
            double? amount,
            String? description,
            String? type,
            String? categoryId,
            String? accountId,
            DateTime? date,
            String? notes,
            Map<String, dynamic>? metadata)?
        updateTransaction,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function()? clearError,
  }) {
    return updateTransaction?.call(id, amount, description, type, categoryId,
        accountId, date, notes, metadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? accountId, String? categoryId, String? type,
            DateTime? startDate, DateTime? endDate)?
        loadTransactions,
    TResult Function(
            double amount,
            String description,
            String type,
            String categoryId,
            String accountId,
            String? notes,
            Map<String, dynamic>? metadata)?
        createTransaction,
    TResult Function(
            int id,
            double? amount,
            String? description,
            String? type,
            String? categoryId,
            String? accountId,
            DateTime? date,
            String? notes,
            Map<String, dynamic>? metadata)?
        updateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (updateTransaction != null) {
      return updateTransaction(id, amount, description, type, categoryId,
          accountId, date, notes, metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTransactions value) loadTransactions,
    required TResult Function(_CreateTransaction value) createTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_ClearError value) clearError,
  }) {
    return updateTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTransactions value)? loadTransactions,
    TResult? Function(_CreateTransaction value)? createTransaction,
    TResult? Function(_UpdateTransaction value)? updateTransaction,
    TResult? Function(_DeleteTransaction value)? deleteTransaction,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return updateTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTransactions value)? loadTransactions,
    TResult Function(_CreateTransaction value)? createTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (updateTransaction != null) {
      return updateTransaction(this);
    }
    return orElse();
  }
}

abstract class _UpdateTransaction implements TransactionEvent {
  const factory _UpdateTransaction(
      {required final int id,
      final double? amount,
      final String? description,
      final String? type,
      final String? categoryId,
      final String? accountId,
      final DateTime? date,
      final String? notes,
      final Map<String, dynamic>? metadata}) = _$UpdateTransactionImpl;

  int get id;
  double? get amount;
  String? get description;
  String? get type;
  String? get categoryId;
  String? get accountId;
  DateTime? get date;
  String? get notes;
  Map<String, dynamic>? get metadata;
  @JsonKey(ignore: true)
  _$$UpdateTransactionImplCopyWith<_$UpdateTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTransactionImplCopyWith<$Res> {
  factory _$$DeleteTransactionImplCopyWith(_$DeleteTransactionImpl value,
          $Res Function(_$DeleteTransactionImpl) then) =
      __$$DeleteTransactionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteTransactionImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$DeleteTransactionImpl>
    implements _$$DeleteTransactionImplCopyWith<$Res> {
  __$$DeleteTransactionImplCopyWithImpl(_$DeleteTransactionImpl _value,
      $Res Function(_$DeleteTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteTransactionImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteTransactionImpl implements _DeleteTransaction {
  const _$DeleteTransactionImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'TransactionEvent.deleteTransaction(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTransactionImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTransactionImplCopyWith<_$DeleteTransactionImpl> get copyWith =>
      __$$DeleteTransactionImplCopyWithImpl<_$DeleteTransactionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? accountId, String? categoryId,
            String? type, DateTime? startDate, DateTime? endDate)
        loadTransactions,
    required TResult Function(
            double amount,
            String description,
            String type,
            String categoryId,
            String accountId,
            String? notes,
            Map<String, dynamic>? metadata)
        createTransaction,
    required TResult Function(
            int id,
            double? amount,
            String? description,
            String? type,
            String? categoryId,
            String? accountId,
            DateTime? date,
            String? notes,
            Map<String, dynamic>? metadata)
        updateTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function() clearError,
  }) {
    return deleteTransaction(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? accountId, String? categoryId, String? type,
            DateTime? startDate, DateTime? endDate)?
        loadTransactions,
    TResult? Function(
            double amount,
            String description,
            String type,
            String categoryId,
            String accountId,
            String? notes,
            Map<String, dynamic>? metadata)?
        createTransaction,
    TResult? Function(
            int id,
            double? amount,
            String? description,
            String? type,
            String? categoryId,
            String? accountId,
            DateTime? date,
            String? notes,
            Map<String, dynamic>? metadata)?
        updateTransaction,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function()? clearError,
  }) {
    return deleteTransaction?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? accountId, String? categoryId, String? type,
            DateTime? startDate, DateTime? endDate)?
        loadTransactions,
    TResult Function(
            double amount,
            String description,
            String type,
            String categoryId,
            String accountId,
            String? notes,
            Map<String, dynamic>? metadata)?
        createTransaction,
    TResult Function(
            int id,
            double? amount,
            String? description,
            String? type,
            String? categoryId,
            String? accountId,
            DateTime? date,
            String? notes,
            Map<String, dynamic>? metadata)?
        updateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (deleteTransaction != null) {
      return deleteTransaction(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTransactions value) loadTransactions,
    required TResult Function(_CreateTransaction value) createTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_ClearError value) clearError,
  }) {
    return deleteTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTransactions value)? loadTransactions,
    TResult? Function(_CreateTransaction value)? createTransaction,
    TResult? Function(_UpdateTransaction value)? updateTransaction,
    TResult? Function(_DeleteTransaction value)? deleteTransaction,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return deleteTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTransactions value)? loadTransactions,
    TResult Function(_CreateTransaction value)? createTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (deleteTransaction != null) {
      return deleteTransaction(this);
    }
    return orElse();
  }
}

abstract class _DeleteTransaction implements TransactionEvent {
  const factory _DeleteTransaction(final int id) = _$DeleteTransactionImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteTransactionImplCopyWith<_$DeleteTransactionImpl> get copyWith =>
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
    extends _$TransactionEventCopyWithImpl<$Res, _$ClearErrorImpl>
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
    return 'TransactionEvent.clearError()';
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
    required TResult Function(String? accountId, String? categoryId,
            String? type, DateTime? startDate, DateTime? endDate)
        loadTransactions,
    required TResult Function(
            double amount,
            String description,
            String type,
            String categoryId,
            String accountId,
            String? notes,
            Map<String, dynamic>? metadata)
        createTransaction,
    required TResult Function(
            int id,
            double? amount,
            String? description,
            String? type,
            String? categoryId,
            String? accountId,
            DateTime? date,
            String? notes,
            Map<String, dynamic>? metadata)
        updateTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function() clearError,
  }) {
    return clearError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? accountId, String? categoryId, String? type,
            DateTime? startDate, DateTime? endDate)?
        loadTransactions,
    TResult? Function(
            double amount,
            String description,
            String type,
            String categoryId,
            String accountId,
            String? notes,
            Map<String, dynamic>? metadata)?
        createTransaction,
    TResult? Function(
            int id,
            double? amount,
            String? description,
            String? type,
            String? categoryId,
            String? accountId,
            DateTime? date,
            String? notes,
            Map<String, dynamic>? metadata)?
        updateTransaction,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function()? clearError,
  }) {
    return clearError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? accountId, String? categoryId, String? type,
            DateTime? startDate, DateTime? endDate)?
        loadTransactions,
    TResult Function(
            double amount,
            String description,
            String type,
            String categoryId,
            String accountId,
            String? notes,
            Map<String, dynamic>? metadata)?
        createTransaction,
    TResult Function(
            int id,
            double? amount,
            String? description,
            String? type,
            String? categoryId,
            String? accountId,
            DateTime? date,
            String? notes,
            Map<String, dynamic>? metadata)?
        updateTransaction,
    TResult Function(int id)? deleteTransaction,
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
    required TResult Function(_LoadTransactions value) loadTransactions,
    required TResult Function(_CreateTransaction value) createTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_ClearError value) clearError,
  }) {
    return clearError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTransactions value)? loadTransactions,
    TResult? Function(_CreateTransaction value)? createTransaction,
    TResult? Function(_UpdateTransaction value)? updateTransaction,
    TResult? Function(_DeleteTransaction value)? deleteTransaction,
    TResult? Function(_ClearError value)? clearError,
  }) {
    return clearError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTransactions value)? loadTransactions,
    TResult Function(_CreateTransaction value)? createTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError(this);
    }
    return orElse();
  }
}

abstract class _ClearError implements TransactionEvent {
  const factory _ClearError() = _$ClearErrorImpl;
}

/// @nodoc
mixin _$TransactionState {
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  TransactionStatus get status => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  Transaction? get selectedTransaction => throw _privateConstructorUsedError;
  int? get currentPage => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionStateCopyWith<TransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
  @useResult
  $Res call(
      {List<Transaction> transactions,
      TransactionStatus status,
      bool hasReachedMax,
      Failure? failure,
      Transaction? selectedTransaction,
      int? currentPage,
      int limit});
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? status = null,
    Object? hasReachedMax = null,
    Object? failure = freezed,
    Object? selectedTransaction = freezed,
    Object? currentPage = freezed,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      selectedTransaction: freezed == selectedTransaction
          ? _value.selectedTransaction
          : selectedTransaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionStateImplCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory _$$TransactionStateImplCopyWith(_$TransactionStateImpl value,
          $Res Function(_$TransactionStateImpl) then) =
      __$$TransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Transaction> transactions,
      TransactionStatus status,
      bool hasReachedMax,
      Failure? failure,
      Transaction? selectedTransaction,
      int? currentPage,
      int limit});
}

/// @nodoc
class __$$TransactionStateImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionStateImpl>
    implements _$$TransactionStateImplCopyWith<$Res> {
  __$$TransactionStateImplCopyWithImpl(_$TransactionStateImpl _value,
      $Res Function(_$TransactionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? status = null,
    Object? hasReachedMax = null,
    Object? failure = freezed,
    Object? selectedTransaction = freezed,
    Object? currentPage = freezed,
    Object? limit = null,
  }) {
    return _then(_$TransactionStateImpl(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      selectedTransaction: freezed == selectedTransaction
          ? _value.selectedTransaction
          : selectedTransaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TransactionStateImpl implements _TransactionState {
  const _$TransactionStateImpl(
      {final List<Transaction> transactions = const [],
      this.status = TransactionStatus.initial,
      this.hasReachedMax = false,
      this.failure,
      this.selectedTransaction,
      this.currentPage,
      this.limit = 20})
      : _transactions = transactions;

  final List<Transaction> _transactions;
  @override
  @JsonKey()
  List<Transaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  @JsonKey()
  final TransactionStatus status;
  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  final Failure? failure;
  @override
  final Transaction? selectedTransaction;
  @override
  final int? currentPage;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'TransactionState(transactions: $transactions, status: $status, hasReachedMax: $hasReachedMax, failure: $failure, selectedTransaction: $selectedTransaction, currentPage: $currentPage, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStateImpl &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.selectedTransaction, selectedTransaction) ||
                other.selectedTransaction == selectedTransaction) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_transactions),
      status,
      hasReachedMax,
      failure,
      selectedTransaction,
      currentPage,
      limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStateImplCopyWith<_$TransactionStateImpl> get copyWith =>
      __$$TransactionStateImplCopyWithImpl<_$TransactionStateImpl>(
          this, _$identity);
}

abstract class _TransactionState implements TransactionState {
  const factory _TransactionState(
      {final List<Transaction> transactions,
      final TransactionStatus status,
      final bool hasReachedMax,
      final Failure? failure,
      final Transaction? selectedTransaction,
      final int? currentPage,
      final int limit}) = _$TransactionStateImpl;

  @override
  List<Transaction> get transactions;
  @override
  TransactionStatus get status;
  @override
  bool get hasReachedMax;
  @override
  Failure? get failure;
  @override
  Transaction? get selectedTransaction;
  @override
  int? get currentPage;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$TransactionStateImplCopyWith<_$TransactionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
