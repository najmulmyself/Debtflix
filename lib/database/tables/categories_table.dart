import 'package:drift/drift.dart';

class CategoriesTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text().withLength(min: 1, max: 50)();

  TextColumn get description => text().nullable().withLength(max: 200)();

  TextColumn get type => text().withLength(min: 1, max: 20)();

  TextColumn get icon => text().withLength(min: 1, max: 50)();

  TextColumn get color => text().withLength(min: 1, max: 20)();

  IntColumn get displayOrder => integer().withDefault(const Constant(0))();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};

  @override
  String get tableName => 'categories';
}