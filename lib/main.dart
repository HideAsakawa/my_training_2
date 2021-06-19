import 'dart:io';
import 'package:db_sample_demo/view/screens/home_screen.dart';
import 'package:db_sample_demo/view_model/button_controller.dart';
import 'package:db_sample_demo/view_model/quiz_data_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import 'model/db/database.dart';

MyDatabase database;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var dbPath = await getDbPath();
  database = MyDatabase(dbPath: dbPath);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<QuizDataViewModel>(
          create: (_) => QuizDataViewModel(),
        ),
        ChangeNotifierProvider<ButtonController>(
            create: (_) => ButtonController(),
        )
      ],
      child: MyApp(),
    ),
  );
}

Future<String> getDbPath() async {
  var dbDir = await getApplicationDocumentsDirectory();
  var dbPath = join(dbDir.path, "quiz.db");

  if (FileSystemEntity.typeSync(dbPath) == FileSystemEntityType.notFound) {
    ByteData byteData = await rootBundle.load("assets/quiz.db");
    List<int> bytes = byteData.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes);
    await File(dbPath).writeAsBytes(bytes);
  }
  return dbPath;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DB sample",
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
