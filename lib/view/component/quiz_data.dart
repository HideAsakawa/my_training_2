import 'package:flutter/material.dart';

class QuizData extends StatelessWidget {
  final numberOfRemaining;
  final numberOfCorrect;
  final correctRate;

  QuizData({this.numberOfRemaining, this.numberOfCorrect, this.correctRate});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: <TableRow>[
        TableRow(
            children: [
              const Text("残り問題"),
              const Text("正解数"),
              const Text("正答率"),
            ]
        ),
        TableRow(
            children: [
              Text(numberOfRemaining.toString()),
              Text(numberOfCorrect.toString()),
              Text(correctRate.toString())
            ]
        )
      ],
    );
  }
}