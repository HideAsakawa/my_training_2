import 'package:db_sample_demo/model/db/database.dart';
import 'package:db_sample_demo/view_model/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List<Question> _shuffledQuestions = [];

  @override
  Widget build(BuildContext context) {
    Future(() async {
      final viewModel = Provider.of<ViewModel>(context, listen: false);
      await viewModel.getAllQuiz();
      _questionShuffle(viewModel.questions);
    });

    print("FirstQuestion$_shuffledQuestions");

    return Scaffold(
      appBar: AppBar(
        title: Text("MVVM Sample"),
        centerTitle: true,
      ),
      body: Consumer <ViewModel>(
        builder: (context, model, child) {
          return ListView.builder(
              itemCount: model.questions.length,
              itemBuilder: (context, int position) => ListTile(
                    title: Text(model.questions[position].question),
                    subtitle: Text(model.questions[position].answer),
                  ));
        },
      ),
    );
  }

  _questionShuffle(List<Question> questions) {
    _shuffledQuestions = questions;
    _shuffledQuestions.shuffle();
  }
}