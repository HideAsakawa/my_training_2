import 'package:db_sample_demo/model/db/database.dart';
import 'package:db_sample_demo/view/component/answer_part.dart';
import 'package:db_sample_demo/view/component/question_panel.dart';
import 'package:db_sample_demo/view/component/quiz_data.dart';
import 'package:db_sample_demo/view_model/quiz_data_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int _numberOfRemaining = 20;
  int _numberOfCorrectAnswer = 0;
  int _correctRate = 0;
  List<Question> _allQuestions = [];

  QuizDataViewModel _quizDataViewModel;

  @override
  void initState() {
    _numberOfRemaining -= 1;
    _numberOfCorrectAnswer = 0;
    _correctRate = 0;
    getAllQuestion();
    super.initState();
  }

  getAllQuestion() async {
    _quizDataViewModel = Provider.of<QuizDataViewModel>(context, listen: false);
    await _quizDataViewModel.getAllQuestion();
    print(_quizDataViewModel.allQuestion);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quiz MVVM Edition"), centerTitle: true),
      body: Column(
        children: <Widget>[
          QuizData(
            numberOfRemaining: _numberOfRemaining,
            numberOfCorrect: _numberOfCorrectAnswer,
            correctRate: _correctRate,
          ),
          const Text("問題", style: TextStyle(fontSize: 20.0),),
          QuestionPanel(),
          // TODO LifeLine(),
          AnswerPart(),
        ],
      ),
    );
  }
}
