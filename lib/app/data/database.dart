import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:moor_demo/app/data/sections_dao.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

///课程表
@DataClassName("Timetable")
class Timetables extends Table {
  IntColumn get id => integer().autoIncrement()();
  ///名称
  TextColumn get name => text()();
  ///开始时间
  DateTimeColumn get startDate => dateTime().nullable()();
  ///周数
  IntColumn get weeks => integer().withDefault(const Constant(30))();
}

///课程
@DataClassName("Course")
class Courses extends Table {
  IntColumn get id => integer().autoIncrement()();
  ///课程名
  TextColumn get name => text()();
  ///教室
  TextColumn get room => text().nullable()();
  ///老师
  TextColumn get teacher => text().nullable()();
  ///属于那个课程表
  IntColumn get timetableId => integer()();
  ///一周的那一天
  IntColumn get weekday => integer()();
  ///那一天
  DateTimeColumn get day => dateTime()();
  ///第几节
  IntColumn get section => integer()();
  ///有几节
  IntColumn get sectionSize => integer()();
}

///第几节
@DataClassName("Section")
class Sections extends Table {
  IntColumn get id => integer().autoIncrement()();
  ///第几节
  IntColumn get section => integer()();
  ///属于那个课程表
  IntColumn get timetableId => integer()();
  ///开始开始
  DateTimeColumn get startTime => dateTime().nullable()();
  ///结束时间
  DateTimeColumn get endTime => dateTime().nullable()();
}

@UseMoor(tables: [Timetables,Courses,Sections], daos: [SectionsDao])
class Database extends _$Database {
  Database() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'timetable.sqlite'));
    return VmDatabase(file);
  });
}