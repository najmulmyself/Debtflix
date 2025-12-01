import 'package:drift/drift.dart';

class Accounts extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text().withLength(min: 1, max: 50)();

  TextColumn get type => text().withLength(min: 1, max: 20)();

  RealColumn get balance => real().withDefault(const Constant(0.0))();

  TextColumn get currency => text().withDefault(const Constant('USD'))();

  TextColumn get icon => text().withLength(min: 1, max: 50)();

  TextColumn get color => text().withLength(min: 1, max: 20)();

  TextColumn get accountNumber => text().withLength(max: 50)();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};

  @override
  String get tableName => 'accounts';
}