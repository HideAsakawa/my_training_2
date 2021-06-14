import 'package:flutter/material.dart';

class QuizAnswerButton extends StatefulWidget {

  final buttonText;
  final onPressed;

  QuizAnswerButton({this.buttonText, this.onPressed});

  @override
  _QuizAnswerButton createState() => _QuizAnswerButton();
}

class _QuizAnswerButton extends State<QuizAnswerButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: Text(widget.buttonText),
    );
  }
}
