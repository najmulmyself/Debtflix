import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget.freezed.dart';
part 'budget.g.dart';

@freezed
class Budget with _$Budget {
  const Budget({
    required this.id,
    required this.name,
    required this.amount,
    required this.spent,
    required this.currency,
    required this.startDate,
    required this.endDate,
    this.categoryId,
    this.notes,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
  });

  factory Budget.fromJson(Map<String, dynamic> json) => _$BudgetFromJson(json);

  double get remaining => amount - spent;
  double get progressPercentage => amount != 0 ? (spent / amount) * 100 : 0.0;
  bool get isOverBudget => spent > amount;

  String get formattedAmount {
    return '\$${amount.toStringAsFixed(2)}';
  }

  String get formattedSpent {
    return '\$${spent.toStringAsFixed(2)}';
  }

  String get formattedRemaining {
    return '\$${remaining.toStringAsFixed(2)}';
  }

  String get progressText {
    return '${progressPercentage.toStringAsFixed(1)}%';
  }
}