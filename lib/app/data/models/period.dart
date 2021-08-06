import 'package:moor/moor.dart';

@DataClassName("Category")
class Categories extends Table {

  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text()();
}
