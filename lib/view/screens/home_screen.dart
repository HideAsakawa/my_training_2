import 'package:db_sample_demo/main.dart';
import 'package:db_sample_demo/model/db/database.dart';
import 'package:db_sample_demo/view/component/mode_select_button.dart';
import 'package:db_sample_demo/view/component/select_toggle.dart';
import 'package:db_sample_demo/view/screens/test_screen.dart';
import 'package:db_sample_demo/view_model/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Image.network("http://placehold.jp/400x300.png"),
              const Text("QuizApp"),
              Expanded(
                  child: Container(
                      alignment: Alignment.topCenter, child: SelectToggle())),
              ModeSelectButton(
                  mode: "START QUIZ", destination: () => toTestScreen(context)),
              ModeSelectButton(
                  mode: "SHOW RECODES",
                  destination: () => toTestScreen(context)),
            ],
          ),
        ),
      ),
    );
  }

  toTestScreen(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TestScreen()));
  }
}
