import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required int id,
    required double amount,
    required String description,
    required String type,
    required String categoryId,
    required String accountId,
    required DateTime date,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    String? notes,
    Map<String, dynamic>? metadata,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  const Transaction._();

  bool get isIncome => type == 'income';
  bool get isExpense => type == 'expense';

  String get formattedAmount {
    final prefix = isIncome ? '+$' : '-$';
    return '$prefix${amount.toStringAsFixed(2)}';
  }
}