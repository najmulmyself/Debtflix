import 'package:drift/drift.dart';

class Budgets extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get categoryId => integer().references(CategoriesTable, #id)();

  TextColumn get name => text().withLength(min: 1, max: 100)();

  RealColumn get amount => real()();

  RealColumn get spent => real().withDefault(const Constant(0.0))();

  TextColumn get period => text().withDefault(const Constant('monthly'))();

  DateTimeColumn get startDate => dateTime()();

  DateTimeColumn get endDate => dateTime()();

  BoolColumn get isActive => boolean().withDefault(const Constant(true))();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};

  @override
  String get tableName => 'budgets';
}