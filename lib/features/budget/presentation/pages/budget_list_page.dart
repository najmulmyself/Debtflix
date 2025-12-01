import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/budget_bloc.dart';
import '../widgets/budget_card.dart';
import '../widgets/add_budget_fab.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/error_widget.dart';
import '../../../../app/theme/app_colors.dart';

class BudgetListPage extends StatelessWidget {
  const BudgetListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Budgets'),
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
      body: BlocBuilder<BudgetBloc, BudgetState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const LoadingWidget();
          }

          if (state.failure != null) {
            return ErrorWidget(
              message: state.failure!.toString(),
              onRetry: () {
                context.read<BudgetBloc>().add(const BudgetEvent.loadBudgets());
              },
            );
          }

          if (state.budgets.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                        Icons.account_balance_wallet,
                        size: 64,
                        color: Colors.blue,
                      ),
                  const SizedBox(height: 16),
                  const Text(
                    'No budgets yet',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Create your first budget to get started',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[500],
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Navigate to create budget
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                    ),
                    child: const Text('Create Budget'),
                  ),
                ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: () async {
              context.read<BudgetBloc>().add(const BudgetEvent.loadBudgets());
            },
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: state.budgets.length,
              itemBuilder: (context, index) {
                final budget = state.budgets[index];
                return BudgetCard(
                  budget: budget,
                  onTap: () {
                    // TODO: Navigate to budget details
                  },
                  onEdit: () {
                    // TODO: Navigate to edit budget
                  },
                  onDelete: () {
                    _showDeleteConfirmation(context, budget);
                  },
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: const AddBudgetFab(),
    );
  }

  void _showDeleteConfirmation(BuildContext context, dynamic budget) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Budget'),
          content: Text(
            'Are you sure you want to delete this budget?\n\n'
            'Amount: \$${budget.amount.toStringAsFixed(2)}\n'
            'Name: ${budget.name}',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('CANCEL'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                context.read<BudgetBloc>().add(BudgetEvent.deleteBudget(budget.id));
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