import 'package:db_sample_demo/model/db/database.dart';
import 'package:db_sample_demo/view/component/life_line.dart';
import 'package:db_sample_demo/view/component/quiz_answer_button.dart';
import 'package:db_sample_demo/view_model/button_controller_viewmodel.dart';
import 'package:db_sample_demo/view_model/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List<Question> _shuffledQuestions = [];
  int _correctQuestionNumber = 0;
  QuizAnswerButton choice1;

  @override
  Widget build(BuildContext context) {

    final viewModel = Provider.of<ViewModel>(context, listen: false);

    Future(() async {
      if (viewModel.questions.isEmpty) {
        await viewModel.getAllQuiz();
        _questionShuffle(viewModel.questions);
        print("getAllQuestion is done");
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("MVVM Sample"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<ViewModel>(
          builder: (context, model, child) {
            print("consumer is done");
            return Center(
              child: Column(
                children: [
                  Text(model.questions[_correctQuestionNumber].question),
                  LifeLine(),

                  // viewModelの種類ごとにConsumerを
                  Consumer<ButtonControllerViewModel>(
                    builder: (context, model, child) {
                      return QuizAnswerButton(
                        buttonText: viewModel.questions[_correctQuestionNumber].answer,
                        buttonColor: model.buttonColor,
                        onPressed: () => _pushAnswerButton,
                      );
                    },
                  ),
                  QuizAnswerButton(
                    buttonText: model.questions[_correctQuestionNumber].choice1,
                    buttonColor: Colors.blueAccent,
                    onPressed: () => _pushAnswerButton(),
                  ),
                  QuizAnswerButton(
                    buttonText: model.questions[_correctQuestionNumber].choice2,
                    buttonColor: Colors.blueAccent,
                    onPressed: () => _pushAnswerButton(),
                  ),
                  QuizAnswerButton(
                    buttonText: model.questions[_correctQuestionNumber].choice3,
                    buttonColor: Colors.blueAccent,
                    onPressed: () => _pushAnswerButton(),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  _questionShuffle(List<Question> questions) {
    _shuffledQuestions = questions;
    _shuffledQuestions.shuffle();
    print("question is shuffled");
  }

  _pushAnswerButton() {
    setState(() {
      _correctQuestionNumber +=1;
    });
  }
}
