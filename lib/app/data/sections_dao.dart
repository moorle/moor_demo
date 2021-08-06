import 'package:moor/moor.dart';
import 'package:moor_demo/app/data/database.dart';

part 'sections_dao.g.dart';

@UseDao(tables: [Sections])
class SectionsDao extends DatabaseAccessor<Database> with _$SectionsDaoMixin {
  SectionsDao(Database db) : super(db);

  Future insertSection(SectionsCompanion section) => into(sections).insert(section);
}