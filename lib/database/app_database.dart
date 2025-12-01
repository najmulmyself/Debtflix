import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import 'tables/transactions_table.dart';
import 'tables/categories_table.dart';
import 'tables/accounts_table.dart';
import 'tables/budgets_table.dart';
import 'tables/goals_table.dart';
import 'tables/users_table.dart';

part 'app_database.g.dart';

@DriftDatabase(
  include: [
    TransactionsTable,
    CategoriesTable,
    AccountsTable,
    BudgetsTable,
    GoalsTable,
    UsersTable,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  AppDatabase.forTesting(DynamicConnection connection) : super(connection);

  static QueryExecutor _openConnection() {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'money_manager.sqlite'));
      return NativeDatabase.createBackgroundConnection(file.path, logStatements: true);
    });
  }

  @override
  int get schemaVersion => 1;
}