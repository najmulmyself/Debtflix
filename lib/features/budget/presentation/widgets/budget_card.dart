import 'package:flutter/material.dart';

import '../../domain/entities/budget.dart';
import '../../../../app/theme/app_colors.dart';

class BudgetCard extends StatelessWidget {
  final Budget budget;
  final VoidCallback? onTap;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  const BudgetCard({
    super.key,
    required this.budget,
    this.onTap,
    this.onEdit,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final isOverBudget = budget.isOverBudget;

    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: isOverBudget ? Colors.red.shade100 : Colors.green.shade100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          isOverBudget ? Icons.warning : Icons.check_circle,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              budget.name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              isOverBudget ? 'Over Budget' : 'On Track',
                              style: TextStyle(
                                fontSize: 12,
                                color: isOverBudget ? Colors.red : Colors.green[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                  Text(
                    '${isOverBudget ? '\$${budget.spent.toStringAsFixed(2)}' : '\$${budget.amount.toStringAsFixed(2)}'}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: isOverBudget ? Colors.red : Colors.blue,
                    ),
                  ),
                  ],
                ),
              const SizedBox(height: 12),
              Text(
                budget.progressText,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  if (onEdit != null)
                    IconButton(
                      icon: const Icon(Icons.edit, size: 18),
                      onPressed: onEdit,
                      color: Colors.blue,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(
                        minWidth: 36,
                        minHeight: 36,
                      ),
                    ),
                  if (onDelete != null)
                    IconButton(
                      icon: const Icon(Icons.delete, size: 18),
                      onPressed: onDelete,
                      color: Colors.red,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(
                        minWidth: 36,
                        minHeight: 36,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatAmount(double amount) {
    return '\$${amount.toStringAsFixed(2)}';
  }

  String _formatSpent(double spent) {
    return '\$${spent.toStringAsFixed(2)}';
  }

  String _formatProgress(double percentage) {
    return '${percentage.toStringAsFixed(1)}%';
  }
}