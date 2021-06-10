import 'package:db_sample_demo/db/database.dart';
import 'package:db_sample_demo/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Question> questions = List();

  @override
  void initState() {
    _getAllQuestions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DB sample"),
        centerTitle: true,
      ),
      body: ListView.builder(
        //TODO ListViewの中身
        itemCount: questions.length,
        itemBuilder: (_, position) => ListTile(
          title: Text(questions[position].id.toString()),
          subtitle: Text(questions[position].toString()),
        ),

      ),
    );
  }

  void _getAllQuestions() async {
    questions = await database.allQuestions;
    setState(() {
    });
  }
}
