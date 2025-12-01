class Transaction {
  final int id;
  final double amount;
  final String description;
  final String type;
  final String categoryId;
  final String accountId;
  final DateTime date;
  final String? notes;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Map<String, dynamic>? metadata;

  const Transaction({
    required this.id,
    required this.amount,
    required this.description,
    required this.type,
    required this.categoryId,
    required this.accountId,
    required this.date,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.metadata,
  });

  bool get isIncome => type == 'income';
  bool get isExpense => type == 'expense';

  String get formattedAmount {
    final prefix = isIncome ? '+\$' : '-\$';
    return '$prefix${amount.toStringAsFixed(2)}';
  }

  Transaction copyWith({
    int? id,
    double? amount,
    String? description,
    String? type,
    String? categoryId,
    String? accountId,
    DateTime? date,
    String? notes,
    DateTime? createdAt,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
  }) {
    return Transaction(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      description: description ?? this.description,
      type: type ?? this.type,
      categoryId: categoryId ?? this.categoryId,
      accountId: accountId ?? this.accountId,
      date: date ?? this.date,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      metadata: metadata ?? this.metadata,
    );
  }

  @override
  String toString() {
    return 'Transaction(id: $id, amount: $amount, description: $description, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    return other is Transaction &&
        id == other.id &&
        amount == other.amount &&
        description == other.description &&
        type == other.type &&
        categoryId == other.categoryId &&
        accountId == other.accountId &&
        date == other.date &&
        notes == other.notes &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => id.hashCode ^ amount.hashCode ^ description.hashCode ^ type.hashCode;
}