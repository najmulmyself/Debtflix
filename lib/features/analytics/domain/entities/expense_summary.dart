import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_summary.freezed.dart';
part 'expense_summary.g.dart';

@freezed
class ExpenseSummary with _$ExpenseSummary {
  const ExpenseSummary._({
    required this.id,
    required this.totalAmount,
    required this.transactionCount,
    required this.categoryId,
    this.categoryName,
    required this.categoryIcon,
    required this.categoryColor,
    required this.date,
    required this.currency,
  });

  factory ExpenseSummary.fromJson(Map<String, dynamic> json) => _$ExpenseSummaryFromJson(json);

  String get formattedTotalAmount {
    return '\$${totalAmount.toStringAsFixed(2)}';
  }

  double get averageTransactionAmount {
    return transactionCount != 0 ? totalAmount / transactionCount : 0.0;
  }

  String get formattedTransactionCount {
    return transactionCount.toString();
  }
}