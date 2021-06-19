
import 'package:db_sample_demo/view/screens/test_screen.dart';
import 'package:flutter/material.dart';

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
              TextButton(
                  onPressed: () => toTestScreen(context),
                  child: Text("START"))
            ],
          ),
        ),
      ),
    );
  }

  toTestScreen(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TestScreen()));
  }
}
