import 'package:db_sample_demo/view_model/button_controller_viewmodel.dart';
import 'package:db_sample_demo/view_model/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(_buttonColor),
      ),
      onPressed: widget.onPressed,
      child: Text(widget.buttonText),
    );
  }
}
