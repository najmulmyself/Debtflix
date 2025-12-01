import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_summary.freezed.dart';
part 'expense_summary.g.dart';

@freezed
class ExpenseSummary with _$ExpenseSummary {
  const ExpenseSummary._();

  const factory ExpenseSummary({
    required int id,
    required double totalAmount,
    required int transactionCount,
    required int categoryId,
    String? categoryName,
    required String categoryIcon,
    required String categoryColor,
    required DateTime date,
    required String currency,
  }) = _ExpenseSummary;

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