// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Timetable extends DataClass implements Insertable<Timetable> {
  final int id;

  ///名称
  final String name;

  ///开始时间
  final DateTime? startDate;

  ///周数
  final int weeks;
  Timetable(
      {required this.id,
      required this.name,
      this.startDate,
      required this.weeks});
  factory Timetable.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Timetable(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      startDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_date']),
      weeks: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}weeks'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || startDate != null) {
      map['start_date'] = Variable<DateTime?>(startDate);
    }
    map['weeks'] = Variable<int>(weeks);
    return map;
  }

  TimetablesCompanion toCompanion(bool nullToAbsent) {
    return TimetablesCompanion(
      id: Value(id),
      name: Value(name),
      startDate: startDate == null && nullToAbsent
          ? const Value.absent()
          : Value(startDate),
      weeks: Value(weeks),
    );
  }

  factory Timetable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Timetable(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      startDate: serializer.fromJson<DateTime?>(json['startDate']),
      weeks: serializer.fromJson<int>(json['weeks']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'startDate': serializer.toJson<DateTime?>(startDate),
      'weeks': serializer.toJson<int>(weeks),
    };
  }

  Timetable copyWith(
          {int? id, String? name, DateTime? startDate, int? weeks}) =>
      Timetable(
        id: id ?? this.id,
        name: name ?? this.name,
        startDate: startDate ?? this.startDate,
        weeks: weeks ?? this.weeks,
      );
  @override
  String toString() {
    return (StringBuffer('Timetable(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('startDate: $startDate, ')
          ..write('weeks: $weeks')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(name.hashCode, $mrjc(startDate.hashCode, weeks.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Timetable &&
          other.id == this.id &&
          other.name == this.name &&
          other.startDate == this.startDate &&
          other.weeks == this.weeks);
}

class TimetablesCompanion extends UpdateCompanion<Timetable> {
  final Value<int> id;
  final Value<String> name;
  final Value<DateTime?> startDate;
  final Value<int> weeks;
  const TimetablesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.startDate = const Value.absent(),
    this.weeks = const Value.absent(),
  });
  TimetablesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.startDate = const Value.absent(),
    this.weeks = const Value.absent(),
  }) : name = Value(name);
  static Insertable<Timetable> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<DateTime?>? startDate,
    Expression<int>? weeks,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (startDate != null) 'start_date': startDate,
      if (weeks != null) 'weeks': weeks,
    });
  }

  TimetablesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<DateTime?>? startDate,
      Value<int>? weeks}) {
    return TimetablesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      startDate: startDate ?? this.startDate,
      weeks: weeks ?? this.weeks,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime?>(startDate.value);
    }
    if (weeks.present) {
      map['weeks'] = Variable<int>(weeks.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TimetablesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('startDate: $startDate, ')
          ..write('weeks: $weeks')
          ..write(')'))
        .toString();
  }
}

class $TimetablesTable extends Timetables
    with TableInfo<$TimetablesTable, Timetable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $TimetablesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _startDateMeta = const VerificationMeta('startDate');
  late final GeneratedColumn<DateTime?> startDate = GeneratedColumn<DateTime?>(
      'start_date', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _weeksMeta = const VerificationMeta('weeks');
  late final GeneratedColumn<int?> weeks = GeneratedColumn<int?>(
      'weeks', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultValue: const Constant(30));
  @override
  List<GeneratedColumn> get $columns => [id, name, startDate, weeks];
  @override
  String get aliasedName => _alias ?? 'timetables';
  @override
  String get actualTableName => 'timetables';
  @override
  VerificationContext validateIntegrity(Insertable<Timetable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    }
    if (data.containsKey('weeks')) {
      context.handle(
          _weeksMeta, weeks.isAcceptableOrUnknown(data['weeks']!, _weeksMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Timetable map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Timetable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TimetablesTable createAlias(String alias) {
    return $TimetablesTable(_db, alias);
  }
}

class Course extends DataClass implements Insertable<Course> {
  final int id;

  ///课程名
  final String name;

  ///教室
  final String? room;

  ///老师
  final String? teacher;

  ///属于那个课程表
  final int timetableId;

  ///一周的那一天
  final int weekday;

  ///那一天
  final DateTime day;

  ///第几节
  final int section;

  ///有几节
  final int sectionSize;
  Course(
      {required this.id,
      required this.name,
      this.room,
      this.teacher,
      required this.timetableId,
      required this.weekday,
      required this.day,
      required this.section,
      required this.sectionSize});
  factory Course.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Course(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      room: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}room']),
      teacher: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}teacher']),
      timetableId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timetable_id'])!,
      weekday: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}weekday'])!,
      day: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}day'])!,
      section: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}section'])!,
      sectionSize: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}section_size'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || room != null) {
      map['room'] = Variable<String?>(room);
    }
    if (!nullToAbsent || teacher != null) {
      map['teacher'] = Variable<String?>(teacher);
    }
    map['timetable_id'] = Variable<int>(timetableId);
    map['weekday'] = Variable<int>(weekday);
    map['day'] = Variable<DateTime>(day);
    map['section'] = Variable<int>(section);
    map['section_size'] = Variable<int>(sectionSize);
    return map;
  }

  CoursesCompanion toCompanion(bool nullToAbsent) {
    return CoursesCompanion(
      id: Value(id),
      name: Value(name),
      room: room == null && nullToAbsent ? const Value.absent() : Value(room),
      teacher: teacher == null && nullToAbsent
          ? const Value.absent()
          : Value(teacher),
      timetableId: Value(timetableId),
      weekday: Value(weekday),
      day: Value(day),
      section: Value(section),
      sectionSize: Value(sectionSize),
    );
  }

  factory Course.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Course(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      room: serializer.fromJson<String?>(json['room']),
      teacher: serializer.fromJson<String?>(json['teacher']),
      timetableId: serializer.fromJson<int>(json['timetableId']),
      weekday: serializer.fromJson<int>(json['weekday']),
      day: serializer.fromJson<DateTime>(json['day']),
      section: serializer.fromJson<int>(json['section']),
      sectionSize: serializer.fromJson<int>(json['sectionSize']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'room': serializer.toJson<String?>(room),
      'teacher': serializer.toJson<String?>(teacher),
      'timetableId': serializer.toJson<int>(timetableId),
      'weekday': serializer.toJson<int>(weekday),
      'day': serializer.toJson<DateTime>(day),
      'section': serializer.toJson<int>(section),
      'sectionSize': serializer.toJson<int>(sectionSize),
    };
  }

  Course copyWith(
          {int? id,
          String? name,
          String? room,
          String? teacher,
          int? timetableId,
          int? weekday,
          DateTime? day,
          int? section,
          int? sectionSize}) =>
      Course(
        id: id ?? this.id,
        name: name ?? this.name,
        room: room ?? this.room,
        teacher: teacher ?? this.teacher,
        timetableId: timetableId ?? this.timetableId,
        weekday: weekday ?? this.weekday,
        day: day ?? this.day,
        section: section ?? this.section,
        sectionSize: sectionSize ?? this.sectionSize,
      );
  @override
  String toString() {
    return (StringBuffer('Course(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('room: $room, ')
          ..write('teacher: $teacher, ')
          ..write('timetableId: $timetableId, ')
          ..write('weekday: $weekday, ')
          ..write('day: $day, ')
          ..write('section: $section, ')
          ..write('sectionSize: $sectionSize')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              room.hashCode,
              $mrjc(
                  teacher.hashCode,
                  $mrjc(
                      timetableId.hashCode,
                      $mrjc(
                          weekday.hashCode,
                          $mrjc(
                              day.hashCode,
                              $mrjc(section.hashCode,
                                  sectionSize.hashCode)))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Course &&
          other.id == this.id &&
          other.name == this.name &&
          other.room == this.room &&
          other.teacher == this.teacher &&
          other.timetableId == this.timetableId &&
          other.weekday == this.weekday &&
          other.day == this.day &&
          other.section == this.section &&
          other.sectionSize == this.sectionSize);
}

class CoursesCompanion extends UpdateCompanion<Course> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> room;
  final Value<String?> teacher;
  final Value<int> timetableId;
  final Value<int> weekday;
  final Value<DateTime> day;
  final Value<int> section;
  final Value<int> sectionSize;
  const CoursesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.room = const Value.absent(),
    this.teacher = const Value.absent(),
    this.timetableId = const Value.absent(),
    this.weekday = const Value.absent(),
    this.day = const Value.absent(),
    this.section = const Value.absent(),
    this.sectionSize = const Value.absent(),
  });
  CoursesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.room = const Value.absent(),
    this.teacher = const Value.absent(),
    required int timetableId,
    required int weekday,
    required DateTime day,
    required int section,
    required int sectionSize,
  })  : name = Value(name),
        timetableId = Value(timetableId),
        weekday = Value(weekday),
        day = Value(day),
        section = Value(section),
        sectionSize = Value(sectionSize);
  static Insertable<Course> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String?>? room,
    Expression<String?>? teacher,
    Expression<int>? timetableId,
    Expression<int>? weekday,
    Expression<DateTime>? day,
    Expression<int>? section,
    Expression<int>? sectionSize,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (room != null) 'room': room,
      if (teacher != null) 'teacher': teacher,
      if (timetableId != null) 'timetable_id': timetableId,
      if (weekday != null) 'weekday': weekday,
      if (day != null) 'day': day,
      if (section != null) 'section': section,
      if (sectionSize != null) 'section_size': sectionSize,
    });
  }

  CoursesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String?>? room,
      Value<String?>? teacher,
      Value<int>? timetableId,
      Value<int>? weekday,
      Value<DateTime>? day,
      Value<int>? section,
      Value<int>? sectionSize}) {
    return CoursesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      room: room ?? this.room,
      teacher: teacher ?? this.teacher,
      timetableId: timetableId ?? this.timetableId,
      weekday: weekday ?? this.weekday,
      day: day ?? this.day,
      section: section ?? this.section,
      sectionSize: sectionSize ?? this.sectionSize,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (room.present) {
      map['room'] = Variable<String?>(room.value);
    }
    if (teacher.present) {
      map['teacher'] = Variable<String?>(teacher.value);
    }
    if (timetableId.present) {
      map['timetable_id'] = Variable<int>(timetableId.value);
    }
    if (weekday.present) {
      map['weekday'] = Variable<int>(weekday.value);
    }
    if (day.present) {
      map['day'] = Variable<DateTime>(day.value);
    }
    if (section.present) {
      map['section'] = Variable<int>(section.value);
    }
    if (sectionSize.present) {
      map['section_size'] = Variable<int>(sectionSize.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CoursesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('room: $room, ')
          ..write('teacher: $teacher, ')
          ..write('timetableId: $timetableId, ')
          ..write('weekday: $weekday, ')
          ..write('day: $day, ')
          ..write('section: $section, ')
          ..write('sectionSize: $sectionSize')
          ..write(')'))
        .toString();
  }
}

class $CoursesTable extends Courses with TableInfo<$CoursesTable, Course> {
  final GeneratedDatabase _db;
  final String? _alias;
  $CoursesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _roomMeta = const VerificationMeta('room');
  late final GeneratedColumn<String?> room = GeneratedColumn<String?>(
      'room', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _teacherMeta = const VerificationMeta('teacher');
  late final GeneratedColumn<String?> teacher = GeneratedColumn<String?>(
      'teacher', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _timetableIdMeta =
      const VerificationMeta('timetableId');
  late final GeneratedColumn<int?> timetableId = GeneratedColumn<int?>(
      'timetable_id', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _weekdayMeta = const VerificationMeta('weekday');
  late final GeneratedColumn<int?> weekday = GeneratedColumn<int?>(
      'weekday', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _dayMeta = const VerificationMeta('day');
  late final GeneratedColumn<DateTime?> day = GeneratedColumn<DateTime?>(
      'day', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _sectionMeta = const VerificationMeta('section');
  late final GeneratedColumn<int?> section = GeneratedColumn<int?>(
      'section', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _sectionSizeMeta =
      const VerificationMeta('sectionSize');
  late final GeneratedColumn<int?> sectionSize = GeneratedColumn<int?>(
      'section_size', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        room,
        teacher,
        timetableId,
        weekday,
        day,
        section,
        sectionSize
      ];
  @override
  String get aliasedName => _alias ?? 'courses';
  @override
  String get actualTableName => 'courses';
  @override
  VerificationContext validateIntegrity(Insertable<Course> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('room')) {
      context.handle(
          _roomMeta, room.isAcceptableOrUnknown(data['room']!, _roomMeta));
    }
    if (data.containsKey('teacher')) {
      context.handle(_teacherMeta,
          teacher.isAcceptableOrUnknown(data['teacher']!, _teacherMeta));
    }
    if (data.containsKey('timetable_id')) {
      context.handle(
          _timetableIdMeta,
          timetableId.isAcceptableOrUnknown(
              data['timetable_id']!, _timetableIdMeta));
    } else if (isInserting) {
      context.missing(_timetableIdMeta);
    }
    if (data.containsKey('weekday')) {
      context.handle(_weekdayMeta,
          weekday.isAcceptableOrUnknown(data['weekday']!, _weekdayMeta));
    } else if (isInserting) {
      context.missing(_weekdayMeta);
    }
    if (data.containsKey('day')) {
      context.handle(
          _dayMeta, day.isAcceptableOrUnknown(data['day']!, _dayMeta));
    } else if (isInserting) {
      context.missing(_dayMeta);
    }
    if (data.containsKey('section')) {
      context.handle(_sectionMeta,
          section.isAcceptableOrUnknown(data['section']!, _sectionMeta));
    } else if (isInserting) {
      context.missing(_sectionMeta);
    }
    if (data.containsKey('section_size')) {
      context.handle(
          _sectionSizeMeta,
          sectionSize.isAcceptableOrUnknown(
              data['section_size']!, _sectionSizeMeta));
    } else if (isInserting) {
      context.missing(_sectionSizeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Course map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Course.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CoursesTable createAlias(String alias) {
    return $CoursesTable(_db, alias);
  }
}

class Section extends DataClass implements Insertable<Section> {
  final int id;

  ///第几节
  final int section;

  ///属于那个课程表
  final int timetableId;

  ///开始开始
  final DateTime? startTime;

  ///结束时间
  final DateTime? endTime;
  Section(
      {required this.id,
      required this.section,
      required this.timetableId,
      this.startTime,
      this.endTime});
  factory Section.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Section(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      section: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}section'])!,
      timetableId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}timetable_id'])!,
      startTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_time']),
      endTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}end_time']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['section'] = Variable<int>(section);
    map['timetable_id'] = Variable<int>(timetableId);
    if (!nullToAbsent || startTime != null) {
      map['start_time'] = Variable<DateTime?>(startTime);
    }
    if (!nullToAbsent || endTime != null) {
      map['end_time'] = Variable<DateTime?>(endTime);
    }
    return map;
  }

  SectionsCompanion toCompanion(bool nullToAbsent) {
    return SectionsCompanion(
      id: Value(id),
      section: Value(section),
      timetableId: Value(timetableId),
      startTime: startTime == null && nullToAbsent
          ? const Value.absent()
          : Value(startTime),
      endTime: endTime == null && nullToAbsent
          ? const Value.absent()
          : Value(endTime),
    );
  }

  factory Section.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Section(
      id: serializer.fromJson<int>(json['id']),
      section: serializer.fromJson<int>(json['section']),
      timetableId: serializer.fromJson<int>(json['timetableId']),
      startTime: serializer.fromJson<DateTime?>(json['startTime']),
      endTime: serializer.fromJson<DateTime?>(json['endTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'section': serializer.toJson<int>(section),
      'timetableId': serializer.toJson<int>(timetableId),
      'startTime': serializer.toJson<DateTime?>(startTime),
      'endTime': serializer.toJson<DateTime?>(endTime),
    };
  }

  Section copyWith(
          {int? id,
          int? section,
          int? timetableId,
          DateTime? startTime,
          DateTime? endTime}) =>
      Section(
        id: id ?? this.id,
        section: section ?? this.section,
        timetableId: timetableId ?? this.timetableId,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
      );
  @override
  String toString() {
    return (StringBuffer('Section(')
          ..write('id: $id, ')
          ..write('section: $section, ')
          ..write('timetableId: $timetableId, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          section.hashCode,
          $mrjc(timetableId.hashCode,
              $mrjc(startTime.hashCode, endTime.hashCode)))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Section &&
          other.id == this.id &&
          other.section == this.section &&
          other.timetableId == this.timetableId &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime);
}

class SectionsCompanion extends UpdateCompanion<Section> {
  final Value<int> id;
  final Value<int> section;
  final Value<int> timetableId;
  final Value<DateTime?> startTime;
  final Value<DateTime?> endTime;
  const SectionsCompanion({
    this.id = const Value.absent(),
    this.section = const Value.absent(),
    this.timetableId = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
  });
  SectionsCompanion.insert({
    this.id = const Value.absent(),
    required int section,
    required int timetableId,
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
  })  : section = Value(section),
        timetableId = Value(timetableId);
  static Insertable<Section> custom({
    Expression<int>? id,
    Expression<int>? section,
    Expression<int>? timetableId,
    Expression<DateTime?>? startTime,
    Expression<DateTime?>? endTime,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (section != null) 'section': section,
      if (timetableId != null) 'timetable_id': timetableId,
      if (startTime != null) 'start_time': startTime,
      if (endTime != null) 'end_time': endTime,
    });
  }

  SectionsCompanion copyWith(
      {Value<int>? id,
      Value<int>? section,
      Value<int>? timetableId,
      Value<DateTime?>? startTime,
      Value<DateTime?>? endTime}) {
    return SectionsCompanion(
      id: id ?? this.id,
      section: section ?? this.section,
      timetableId: timetableId ?? this.timetableId,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (section.present) {
      map['section'] = Variable<int>(section.value);
    }
    if (timetableId.present) {
      map['timetable_id'] = Variable<int>(timetableId.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<DateTime?>(startTime.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<DateTime?>(endTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SectionsCompanion(')
          ..write('id: $id, ')
          ..write('section: $section, ')
          ..write('timetableId: $timetableId, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime')
          ..write(')'))
        .toString();
  }
}

class $SectionsTable extends Sections with TableInfo<$SectionsTable, Section> {
  final GeneratedDatabase _db;
  final String? _alias;
  $SectionsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _sectionMeta = const VerificationMeta('section');
  late final GeneratedColumn<int?> section = GeneratedColumn<int?>(
      'section', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _timetableIdMeta =
      const VerificationMeta('timetableId');
  late final GeneratedColumn<int?> timetableId = GeneratedColumn<int?>(
      'timetable_id', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _startTimeMeta = const VerificationMeta('startTime');
  late final GeneratedColumn<DateTime?> startTime = GeneratedColumn<DateTime?>(
      'start_time', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _endTimeMeta = const VerificationMeta('endTime');
  late final GeneratedColumn<DateTime?> endTime = GeneratedColumn<DateTime?>(
      'end_time', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, section, timetableId, startTime, endTime];
  @override
  String get aliasedName => _alias ?? 'sections';
  @override
  String get actualTableName => 'sections';
  @override
  VerificationContext validateIntegrity(Insertable<Section> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('section')) {
      context.handle(_sectionMeta,
          section.isAcceptableOrUnknown(data['section']!, _sectionMeta));
    } else if (isInserting) {
      context.missing(_sectionMeta);
    }
    if (data.containsKey('timetable_id')) {
      context.handle(
          _timetableIdMeta,
          timetableId.isAcceptableOrUnknown(
              data['timetable_id']!, _timetableIdMeta));
    } else if (isInserting) {
      context.missing(_timetableIdMeta);
    }
    if (data.containsKey('start_time')) {
      context.handle(_startTimeMeta,
          startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta));
    }
    if (data.containsKey('end_time')) {
      context.handle(_endTimeMeta,
          endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Section map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Section.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SectionsTable createAlias(String alias) {
    return $SectionsTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $TimetablesTable timetables = $TimetablesTable(this);
  late final $CoursesTable courses = $CoursesTable(this);
  late final $SectionsTable sections = $SectionsTable(this);
  late final SectionsDao sectionsDao = SectionsDao(this as Database);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [timetables, courses, sections];
}
