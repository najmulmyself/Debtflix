import 'package:flutter/material.dart';

class AddBudgetFab extends StatelessWidget {
  const AddBudgetFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // TODO: Navigate to create budget
      },
      backgroundColor: AppColors.accent,
      child: const Icon(Icons.add),
    );
  }
}