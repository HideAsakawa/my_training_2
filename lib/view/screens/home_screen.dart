import 'package:db_sample_demo/main.dart';
import 'package:db_sample_demo/model/db/database.dart';
import 'package:db_sample_demo/viewmodel/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Question> questions = [];

  @override
  void initState() {
    //_getAllQuestions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ViewModel>(context, listen: false);
    Future(() async {
      await viewModel.getAllQuiz();
    });

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

  Future<void> _getAllQuestions() async {

    // final viewModel = Provider.of<ViewModel>(context, listen: false);
    // await viewModel.getAllQuiz();

    // questions = await database.allQuestions;
    // setState(() {
    // });
  }
}
