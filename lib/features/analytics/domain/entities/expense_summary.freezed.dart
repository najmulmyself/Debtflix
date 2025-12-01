// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExpenseSummary _$ExpenseSummaryFromJson(Map<String, dynamic> json) {
  return _ExpenseSummary.fromJson(json);
}

/// @nodoc
mixin _$ExpenseSummary {
  int get id => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  int get transactionCount => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  String? get categoryName => throw _privateConstructorUsedError;
  String get categoryIcon => throw _privateConstructorUsedError;
  String get categoryColor => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseSummaryCopyWith<ExpenseSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseSummaryCopyWith<$Res> {
  factory $ExpenseSummaryCopyWith(
          ExpenseSummary value, $Res Function(ExpenseSummary) then) =
      _$ExpenseSummaryCopyWithImpl<$Res, ExpenseSummary>;
  @useResult
  $Res call(
      {int id,
      double totalAmount,
      int transactionCount,
      int categoryId,
      String? categoryName,
      String categoryIcon,
      String categoryColor,
      DateTime date,
      String currency});
}

/// @nodoc
class _$ExpenseSummaryCopyWithImpl<$Res, $Val extends ExpenseSummary>
    implements $ExpenseSummaryCopyWith<$Res> {
  _$ExpenseSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? totalAmount = null,
    Object? transactionCount = null,
    Object? categoryId = null,
    Object? categoryName = freezed,
    Object? categoryIcon = null,
    Object? categoryColor = null,
    Object? date = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      transactionCount: null == transactionCount
          ? _value.transactionCount
          : transactionCount // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIcon: null == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as String,
      categoryColor: null == categoryColor
          ? _value.categoryColor
          : categoryColor // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenseSummaryImplCopyWith<$Res>
    implements $ExpenseSummaryCopyWith<$Res> {
  factory _$$ExpenseSummaryImplCopyWith(_$ExpenseSummaryImpl value,
          $Res Function(_$ExpenseSummaryImpl) then) =
      __$$ExpenseSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      double totalAmount,
      int transactionCount,
      int categoryId,
      String? categoryName,
      String categoryIcon,
      String categoryColor,
      DateTime date,
      String currency});
}

/// @nodoc
class __$$ExpenseSummaryImplCopyWithImpl<$Res>
    extends _$ExpenseSummaryCopyWithImpl<$Res, _$ExpenseSummaryImpl>
    implements _$$ExpenseSummaryImplCopyWith<$Res> {
  __$$ExpenseSummaryImplCopyWithImpl(
      _$ExpenseSummaryImpl _value, $Res Function(_$ExpenseSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? totalAmount = null,
    Object? transactionCount = null,
    Object? categoryId = null,
    Object? categoryName = freezed,
    Object? categoryIcon = null,
    Object? categoryColor = null,
    Object? date = null,
    Object? currency = null,
  }) {
    return _then(_$ExpenseSummaryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      transactionCount: null == transactionCount
          ? _value.transactionCount
          : transactionCount // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIcon: null == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as String,
      categoryColor: null == categoryColor
          ? _value.categoryColor
          : categoryColor // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseSummaryImpl extends _ExpenseSummary {
  const _$ExpenseSummaryImpl(
      {required this.id,
      required this.totalAmount,
      required this.transactionCount,
      required this.categoryId,
      this.categoryName,
      required this.categoryIcon,
      required this.categoryColor,
      required this.date,
      required this.currency})
      : super._();

  factory _$ExpenseSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseSummaryImplFromJson(json);

  @override
  final int id;
  @override
  final double totalAmount;
  @override
  final int transactionCount;
  @override
  final int categoryId;
  @override
  final String? categoryName;
  @override
  final String categoryIcon;
  @override
  final String categoryColor;
  @override
  final DateTime date;
  @override
  final String currency;

  @override
  String toString() {
    return 'ExpenseSummary(id: $id, totalAmount: $totalAmount, transactionCount: $transactionCount, categoryId: $categoryId, categoryName: $categoryName, categoryIcon: $categoryIcon, categoryColor: $categoryColor, date: $date, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseSummaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.transactionCount, transactionCount) ||
                other.transactionCount == transactionCount) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryIcon, categoryIcon) ||
                other.categoryIcon == categoryIcon) &&
            (identical(other.categoryColor, categoryColor) ||
                other.categoryColor == categoryColor) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      totalAmount,
      transactionCount,
      categoryId,
      categoryName,
      categoryIcon,
      categoryColor,
      date,
      currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseSummaryImplCopyWith<_$ExpenseSummaryImpl> get copyWith =>
      __$$ExpenseSummaryImplCopyWithImpl<_$ExpenseSummaryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseSummaryImplToJson(
      this,
    );
  }
}

abstract class _ExpenseSummary extends ExpenseSummary {
  const factory _ExpenseSummary(
      {required final int id,
      required final double totalAmount,
      required final int transactionCount,
      required final int categoryId,
      final String? categoryName,
      required final String categoryIcon,
      required final String categoryColor,
      required final DateTime date,
      required final String currency}) = _$ExpenseSummaryImpl;
  const _ExpenseSummary._() : super._();

  factory _ExpenseSummary.fromJson(Map<String, dynamic> json) =
      _$ExpenseSummaryImpl.fromJson;

  @override
  int get id;
  @override
  double get totalAmount;
  @override
  int get transactionCount;
  @override
  int get categoryId;
  @override
  String? get categoryName;
  @override
  String get categoryIcon;
  @override
  String get categoryColor;
  @override
  DateTime get date;
  @override
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseSummaryImplCopyWith<_$ExpenseSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
