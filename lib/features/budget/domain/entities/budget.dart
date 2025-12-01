import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget.freezed.dart';
part 'budget.g.dart';

@freezed
class Budget with _$Budget {
  const factory Budget({
    required int id,
    required String name,
    required double amount,
    required double spent,
    required String currency,
    required DateTime startDate,
    required DateTime endDate,
    String? categoryId,
    String? notes,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Budget;
  
  const Budget._();

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