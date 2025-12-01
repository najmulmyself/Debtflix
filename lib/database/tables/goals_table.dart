import 'package:drift/drift.dart';

class Goals extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text().withLength(min: 1, max: 100)();

  RealColumn get targetAmount => real()();

  RealColumn get currentAmount => real().withDefault(const Constant(0.0))();

  TextColumn get description => text().withLength(max: 500)();

  DateTimeColumn get targetDate => dateTime()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};

  @override
  String get tableName => 'goals';
}