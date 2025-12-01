import 'package:freezed_annotation/freezed_annotation.dart';

part 'savings_goal.freezed.dart';
part 'savings_goal.g.dart';

@freezed
class SavingsGoal with _$SavingsGoal {
  const SavingsGoal._();

  const factory SavingsGoal({
    required int id,
    required String name,
    required double targetAmount,
    required double currentAmount,
    required DateTime targetDate,
    int? categoryId,
    String? categoryName,
    String? categoryIcon,
    String? categoryColor,
    required DateTime createdAt,
    required DateTime updatedAt,
    bool? isCompleted,
    String? notes,
    String? currency,
  }) = _SavingsGoal;

  factory SavingsGoal.fromJson(Map<String, dynamic> json) => _$SavingsGoalFromJson(json);

  @override
  String toString() {
    return 'SavingsGoal{id: $id, name: $name, target: \$${targetAmount.toStringAsFixed(2)}, current: \$${currentAmount.toStringAsFixed(2)}, date: $targetDate}';
  }

  double get progressPercentage => targetAmount != 0 ? (currentAmount / targetAmount) * 100 : 0.0;

  double get remainingAmount => targetAmount - currentAmount;

  String get formattedTargetAmount {
    return '\$${targetAmount.toStringAsFixed(2)}';
  }

  String get formattedCurrentAmount {
    return '\$${currentAmount.toStringAsFixed(2)}';
  }

  String get formattedProgressText {
    return '${progressPercentage.toStringAsFixed(1)}%';
  }

  bool get isGoalCompleted => (isCompleted ?? false) && currentAmount >= targetAmount;
}