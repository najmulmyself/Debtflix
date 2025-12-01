import 'package:flutter/material.dart';

class AddTransactionFab extends StatelessWidget {
  const AddTransactionFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // TODO: Navigate to add transaction screen
      },
      backgroundColor: Colors.blue,
      child: const Icon(Icons.add),
    );
  }
}