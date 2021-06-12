import 'package:db_sample_demo/model/db/database.dart';
import 'package:db_sample_demo/view_model/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen>{
  List<Question> _shuffledQuestions = [];

  @override
  Widget build(BuildContext context) {

    final viewModel = Provider.of<ViewModel>(context, listen: false);
    Future(() async {
      await viewModel.getAllQuiz();
    });

    shuffleQuestion(viewModel);
    print("FirstQuestion$_shuffledQuestions");

    return Scaffold(
      appBar: AppBar(
        title: Text("MVVM Sample"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(child: Text("問題")),
            Center(child: Text(_shuffledQuestions[0].question,))
          ],
        ),
      ),
    );
  }

  shuffleQuestion(ViewModel model) {
    _shuffledQuestions = model.questions;
    _shuffledQuestions.shuffle();
  }
}