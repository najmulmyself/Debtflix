import 'package:drift/drift.dart';

@DataClassName('User')
class UsersTable extends Table {
  IntColumn get id => integer()();
  TextColumn get email => text()();
  TextColumn get name => text()();
  TextColumn get avatar => text().nullable()();
  TextColumn get currency => text().withDefault(const Currency('USD'))();
  TextColumn get language => text().withDefault(const Language('en'))();
  TextColumn get timezone => text().withDefault(const Timezone('UTC'))();
  BoolColumn get emailVerified => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}