import 'package:db_sample_demo/model/db/database.dart';
import 'package:db_sample_demo/view/component/answer_part.dart';
import 'package:db_sample_demo/view/component/life_line.dart';
import 'package:db_sample_demo/view/component/question_panel.dart';
import 'package:db_sample_demo/view/component/quiz_data.dart';
import 'package:db_sample_demo/view_model/button_controller.dart';
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
  int _currentQuestionNumber = 0;
  //List<Question> _shuffledQuestions = [];
  ButtonController _answerButtonColor;

  QuizDataViewModel _quizViewModel;

  @override
  void initState() {
    _numberOfRemaining = _numberOfRemaining - 1;
    _numberOfCorrectAnswer = 0;
    _correctRate = 0;
    _currentQuestionNumber = 0;
    getAllQuestion();
    super.initState();
  }

  getAllQuestion() async {
    _quizViewModel = Provider.of<QuizDataViewModel>(context, listen: false);
    await _quizViewModel.getAllQuestion();
    print("init:");
    setState(() {
    });
  }


  @override
  Widget build(BuildContext context) {
    print("build:");
    return Scaffold(
      appBar: AppBar(title: Text("Quiz MVVM Edition"), centerTitle: true),
      body: _quizViewModel.allQuestion.isEmpty ? Container() : Column(
        children: <Widget>[
          QuizData(
            numberOfRemaining: _numberOfRemaining,
            numberOfCorrect: _numberOfCorrectAnswer,
            correctRate: _correctRate,
          ),
          QuestionPanel(currentQuestion: _quizViewModel.allQuestion[_currentQuestionNumber].question,),
          LifeLine(),
          AnswerButtonPart(
            questions: _quizViewModel.allQuestion[_currentQuestionNumber],
            onPressed: () => _nextQuestion(),
          ),
        ],
      ),
    );
  }

  _nextQuestion() {
    _answerButtonColor = Provider.of<ButtonController>(context, listen: false);
    setState(() {
      print("onPressed");
      _answerButtonColor.setButtonColor(Colors.green);
      _currentQuestionNumber += 1;
      _numberOfRemaining -= 1;
    });
  }
}
