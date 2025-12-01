// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'savings_goal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavingsGoalImpl _$$SavingsGoalImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SavingsGoalImpl',
      json,
      ($checkedConvert) {
        final val = _$SavingsGoalImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          name: $checkedConvert('name', (v) => v as String),
          targetAmount:
              $checkedConvert('targetAmount', (v) => (v as num).toDouble()),
          currentAmount:
              $checkedConvert('currentAmount', (v) => (v as num).toDouble()),
          targetDate:
              $checkedConvert('targetDate', (v) => DateTime.parse(v as String)),
          categoryId:
              $checkedConvert('categoryId', (v) => (v as num?)?.toInt()),
          categoryName: $checkedConvert('categoryName', (v) => v as String?),
          categoryIcon: $checkedConvert('categoryIcon', (v) => v as String?),
          categoryColor: $checkedConvert('categoryColor', (v) => v as String?),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          isCompleted: $checkedConvert('isCompleted', (v) => v as bool?),
          notes: $checkedConvert('notes', (v) => v as String?),
          currency: $checkedConvert('currency', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SavingsGoalImplToJson(_$SavingsGoalImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'targetAmount': instance.targetAmount,
    'currentAmount': instance.currentAmount,
    'targetDate': instance.targetDate.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('categoryId', instance.categoryId);
  writeNotNull('categoryName', instance.categoryName);
  writeNotNull('categoryIcon', instance.categoryIcon);
  writeNotNull('categoryColor', instance.categoryColor);
  val['createdAt'] = instance.createdAt.toIso8601String();
  val['updatedAt'] = instance.updatedAt.toIso8601String();
  writeNotNull('isCompleted', instance.isCompleted);
  writeNotNull('notes', instance.notes);
  writeNotNull('currency', instance.currency);
  return val;
}
