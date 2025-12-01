// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BudgetImpl _$$BudgetImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$BudgetImpl',
      json,
      ($checkedConvert) {
        final val = _$BudgetImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          name: $checkedConvert('name', (v) => v as String),
          amount: $checkedConvert('amount', (v) => (v as num).toDouble()),
          spent: $checkedConvert('spent', (v) => (v as num).toDouble()),
          currency: $checkedConvert('currency', (v) => v as String),
          startDate:
              $checkedConvert('startDate', (v) => DateTime.parse(v as String)),
          endDate:
              $checkedConvert('endDate', (v) => DateTime.parse(v as String)),
          categoryId: $checkedConvert('categoryId', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updated_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at', 'updatedAt': 'updated_at'},
    );

Map<String, dynamic> _$$BudgetImplToJson(_$BudgetImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'amount': instance.amount,
    'spent': instance.spent,
    'currency': instance.currency,
    'startDate': instance.startDate.toIso8601String(),
    'endDate': instance.endDate.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('categoryId', instance.categoryId);
  writeNotNull('notes', instance.notes);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}
