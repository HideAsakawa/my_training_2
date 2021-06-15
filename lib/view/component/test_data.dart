import 'package:flutter/material.dart';

class TestData extends StatelessWidget {
  final numberOfRemaining;
  final numberOfCorrectAnswers;
  final correctRate;

  TestData(
      {this.numberOfRemaining, this.numberOfCorrectAnswers, this.correctRate});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(child: Center(child: Text("残り問題数"))),
            const Expanded(child: Center(child: Text("正解数"))),
            const Expanded(child: Center(child: Text("正答率"))),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Center(child: Text(numberOfRemaining.toString()))),
              Expanded(child: Center(child: Text(numberOfCorrectAnswers.toString()))),
              Expanded(child: Center(child: Text(correctRate.toString()))),
            ],
          ),
        ),
      ],
    );
  }
}
