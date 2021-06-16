import 'dart:io';

import 'package:db_sample_demo/model/db/database.dart';
import 'package:db_sample_demo/view/component/life_line.dart';
import 'package:db_sample_demo/view/component/quiz_answer_button.dart';
import 'package:db_sample_demo/view/component/test_data.dart';
import 'package:db_sample_demo/view_model/button_controller_viewmodel.dart';
import 'package:db_sample_demo/view_model/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:soundpool/soundpool.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List<Question> _shuffledQuestions = [];
  int _correctQuestionNumber = 0;
  int _numberOfRemaining = 19;
  int _numberOfCorrectAnswers = 0;
  int _correctRate = 0;
  ViewModel viewModel;
  Soundpool _soundpool;
  int _soundIdIncorrect = 0;
  int _soundIdCorrect = 0;

  @override
  void initState() {
    super.initState();
    initSounds();
  }

  void initSounds() async {
    try {
      _soundpool = Soundpool.fromOptions();
      _soundIdCorrect = await loadSounds("assets/sounds/sound_correct.mp3");
      _soundIdCorrect = await loadSounds("assets/sounds/sound_incorrect.mp3");
      setState(() {

      });
    } on IOException catch (error){
      print("errorの内容は$errorです");
    }

  }

  Future<int> loadSounds(String soundPath) {
    return rootBundle.load(soundPath).then((value) => _soundpool.load(value));
  }



  @override
  void dispose() {
    _soundpool.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final viewModel = Provider.of<ViewModel>(context, listen: false);

    Future(() async {
      if (viewModel.questions.isEmpty) {
        await viewModel.getAllQuiz();
        _questionShuffle(viewModel.questions);
        print("getAllQuiz is done");
      }
    });

    print("_correctQuestionNumber: $_correctQuestionNumber");

    return Scaffold(
      appBar: AppBar(
        title: Text("MVVM Sample"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<ViewModel>(
          builder: (context, model, child) {
            print("consumer is run");
            return Center(
              child: (viewModel.questions.isNotEmpty) ? Column(
                children: [
                  TestData(numberOfRemaining: _numberOfRemaining, numberOfCorrectAnswers: _numberOfCorrectAnswers, correctRate: _correctRate,),
                  const Text("問題", style: TextStyle(fontSize: 27.0),),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(model.questions[_correctQuestionNumber].question, style: TextStyle(fontSize: 20.0),),
                    ),
                  ),
                  LifeLine(),
                  Consumer<ButtonControllerViewModel>(
                    builder: (context, model, child) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          QuizAnswerButton(
                            buttonText: viewModel.questions[_correctQuestionNumber].answer,
                            buttonColor: model.buttonColor,
                            onPressed: () => _pushAnswerButton(viewModel.questions[_correctQuestionNumber].answer),
                          ),
                          QuizAnswerButton(
                            buttonText: viewModel.questions[_correctQuestionNumber].choice1,
                            buttonColor: model.buttonColor,
                            onPressed: () => _pushAnswerButton(viewModel.questions[_correctQuestionNumber].choice1),
                          ),
                          QuizAnswerButton(
                            buttonText: viewModel.questions[_correctQuestionNumber].choice2,
                            buttonColor: model.buttonColor,
                            onPressed: () => _pushAnswerButton(viewModel.questions[_correctQuestionNumber].choice2),
                          ),
                          QuizAnswerButton(
                            buttonText: viewModel.questions[_correctQuestionNumber].choice3,
                            buttonColor: model.buttonColor,
                            onPressed: () => _pushAnswerButton(viewModel.questions[_correctQuestionNumber].choice3),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ) : Container(),
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

  _pushAnswerButton(String userAnswer) {
    if(userAnswer == _shuffledQuestions[_correctQuestionNumber].answer) {
      print("正解");
      _numberOfCorrectAnswers += 1;
    } else {
      print("不正化");
    }

    if(_numberOfRemaining <= 0) {
      Navigator.pop(context);
    } else {
      setState(() {
        _correctRate = (_numberOfCorrectAnswers / (20 - _numberOfRemaining) * 100 ).toInt() ;
        _correctQuestionNumber +=1;
        _numberOfRemaining -= 1;
      });
    }
  }
}
