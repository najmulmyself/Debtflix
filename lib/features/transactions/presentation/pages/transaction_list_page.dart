import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../bloc/simple_transaction_bloc.dart';
import '../widgets/transaction_card.dart';
import '../widgets/add_transaction_fab.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/error_widget.dart';
import '../../../../app/theme/app_colors.dart';

class TransactionListPage extends StatelessWidget {
  const TransactionListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transactions'),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Implement search functionality
            },
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case 'filter':
                  // TODO: Implement filter functionality
                  break;
                case 'sort':
                  // TODO: Implement sort functionality
                  break;
              }
            },
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(
                value: 'filter',
                child: Row(
                  children: [
                    Icon(Icons.filter_list, size: 20),
                    const SizedBox(width: 8),
                    Text('Filter'),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'sort',
                child: Row(
                  children: [
                    Icon(Icons.sort, size: 20),
                    const SizedBox(width: 8),
                    Text('Sort'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: BlocBuilder<TransactionBloc, TransactionState>(
        builder: (context, state) {
          if (state.status == TransactionStatus.loading) {
            return const LoadingWidget();
          }

          if (state.failure != null) {
            return ErrorWidget(
              message: state.failure!.toString(),
              onRetry: () {
                context.read<TransactionBloc>().add(const LoadTransactions());
              },
            );
          }

          if (state.transactions.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.receipt_long,
                    size: 64,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'No transactions yet',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Add your first transaction to get started',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: () async {
              context.read<TransactionBloc>().add(const LoadTransactions());
            },
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: state.transactions.length,
              itemBuilder: (context, index) {
                final transaction = state.transactions[index];
                return TransactionCard(
                  transaction: transaction,
                  onTap: () {
                    // TODO: Navigate to transaction details
                  },
                  onEdit: () {
                    // TODO: Navigate to edit transaction
                  },
                  onDelete: () {
                    _showDeleteConfirmation(context, transaction);
                  },
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: const AddTransactionFab(),
    );
  }

  void _showDeleteConfirmation(BuildContext context, dynamic transaction) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Transaction'),
          content: Text(
            'Are you sure you want to delete this transaction?\n\n'
            'Amount: \$${transaction.amount.toStringAsFixed(2)}\n'
            'Description: ${transaction.description}',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('CANCEL'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                context.read<TransactionBloc>().add(DeleteTransaction(transaction.id));
              },
              style: TextButton.styleFrom(
                foregroundColor: AppColors.error,
              ),
              child: const Text('DELETE'),
            ),
          ],
        );
      },
    );
  }
}