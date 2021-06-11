import 'dart:io';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';

part 'database.g.dart';

class Questions extends Table {
  IntColumn get id => integer()();
  TextColumn get question => text()();
  TextColumn get answer => text()();
  TextColumn get choice1 => text()();
  TextColumn get choice2 => text()();
  TextColumn get choice3 => text()();
  TextColumn get explanation => text()();
}

@UseMoor(tables: [Questions])
class MyDatabase extends _$MyDatabase{
  final String dbPath;
  MyDatabase({this.dbPath}) : super(_openConnection(dbPath));

  @override
  int get schemaVersion => 1;

  // 全てのクイズデータを取得
  Future<List<Question>> get allQuestions => select(questions).get();

}

LazyDatabase _openConnection(String dbPath) {

  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final file = File(dbPath);
    return VmDatabase(file);
  });
}