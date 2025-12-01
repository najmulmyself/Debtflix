import 'package:drift/drift.dart';

@DataClassName('Transaction')
class TransactionsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text()();
  RealColumn get amount => real()();
  TextColumn get currency => text().withDefault(const Currency('USD'))();
  TextColumn get type => text().withDefault(const TransactionType.expense))();
  IntColumn get categoryId => integer().nullable().references(CategoriesTable, #id)();
  IntColumn get accountId => integer().nullable().references(AccountsTable, #id)();
  DateTimeColumn get date => dateTime()();
  TextColumn get receiptImagePath => text().nullable()();
  TextColumn get notes => text().nullable()();
  BoolColumn get isRecurring => boolean().withDefault(const Constant(false))();
  TextColumn get recurringPattern => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}

enum TransactionType {
  income,
  expense,
  transfer;
}

enum Currency {
  USD,
  EUR,
  GBP,
  JPY,
  CAD,
  AUD,
  CHF,
  CNY,
  INR,
  BRL,
  RUB,
  KRW,
  MXN,
  SGD,
  HKD,
  NOK,
  NZD,
  ZAR,
  TRY,
}

enum Language {
  en,
  es,
  fr,
  de,
  it,
  pt,
  ru,
  ja,
  zh,
  ar,
  hi,
}

enum Timezone {
  UTC,
  EST,
  PST,
  MST,
  CST,
  IST,
  GMT,
  CET,
  EET,
  JST,
  AEST,
}