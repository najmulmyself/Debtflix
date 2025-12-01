// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseSummaryImpl _$$ExpenseSummaryImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ExpenseSummaryImpl',
      json,
      ($checkedConvert) {
        final val = _$ExpenseSummaryImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          totalAmount:
              $checkedConvert('totalAmount', (v) => (v as num).toDouble()),
          transactionCount:
              $checkedConvert('transactionCount', (v) => (v as num).toInt()),
          categoryId: $checkedConvert('categoryId', (v) => (v as num).toInt()),
          categoryName: $checkedConvert('categoryName', (v) => v as String?),
          categoryIcon: $checkedConvert('categoryIcon', (v) => v as String),
          categoryColor: $checkedConvert('categoryColor', (v) => v as String),
          date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
          currency: $checkedConvert('currency', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ExpenseSummaryImplToJson(
    _$ExpenseSummaryImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'totalAmount': instance.totalAmount,
    'transactionCount': instance.transactionCount,
    'categoryId': instance.categoryId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('categoryName', instance.categoryName);
  val['categoryIcon'] = instance.categoryIcon;
  val['categoryColor'] = instance.categoryColor;
  val['date'] = instance.date.toIso8601String();
  val['currency'] = instance.currency;
  return val;
}
