import 'package:flutter/material.dart';

class QuestionPanel extends StatelessWidget {
  final currentQuestion;

  QuestionPanel({this.currentQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("問題", style: TextStyle(fontSize: 20.0),),
        Text(currentQuestion),
      ],
    );
  }
}