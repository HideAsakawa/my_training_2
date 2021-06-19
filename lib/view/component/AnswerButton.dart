import 'package:flutter/material.dart';

class AnswerButton extends StatefulWidget {
  final String label;
  final onPressed;

  AnswerButton({this.label, this.onPressed});

  @override
  _AnswerButtonState createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget.onPressed,
        child: Text(widget.label));
  }
}


