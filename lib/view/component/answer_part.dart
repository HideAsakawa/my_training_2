import 'package:db_sample_demo/model/db/database.dart';
import 'package:flutter/material.dart';
import 'AnswerButton.dart';

class AnswerButtonPart extends StatelessWidget {
  final Question questions;
  final onPressed;

  AnswerButtonPart({this.questions, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AnswerButton(label: questions.answer,  onPressed: onPressed, ),
      AnswerButton(label: questions.choice2, onPressed: onPressed,),
      AnswerButton(label: questions.choice1, onPressed: onPressed,),
      AnswerButton(label: questions.choice3, onPressed: onPressed,)
    ],);}
}