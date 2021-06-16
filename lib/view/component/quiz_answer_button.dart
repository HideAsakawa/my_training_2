import 'package:flutter/material.dart';

class QuizAnswerButton extends StatefulWidget {
  final buttonText;
  final onPressed;
  final buttonColor;

  QuizAnswerButton({this.buttonText, this.onPressed, this.buttonColor});

  @override
  _QuizAnswerButton createState() => _QuizAnswerButton();
}

class _QuizAnswerButton extends State<QuizAnswerButton> {
  Color _buttonColor;

  @override
  Widget build(BuildContext context) {
    _buttonColor = widget.buttonColor;
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(_buttonColor),
        ),
        onPressed: widget.onPressed,
        child: Text(widget.buttonText),
      ),
    );
  }
}
