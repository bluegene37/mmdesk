import 'package:drift/drift.dart';

class MenuItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get parentId => integer().nullable()();
  TextColumn get label => text()();
  TextColumn get actionKey => text().nullable()();
  TextColumn get requiredPermission => text().nullable()();
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();
}
