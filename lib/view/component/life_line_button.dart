import 'package:flutter/material.dart';

class LifeLineButton extends StatefulWidget {
  final _buttonColor = Colors.amber;
  final icon;
  final onPressed;
  final isButtonEnable = true;

  LifeLineButton({this.onPressed, this.icon});

  @override
  _LifeLineButtonState createState() => _LifeLineButtonState();
}

class _LifeLineButtonState extends State<LifeLineButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(widget._buttonColor)
      ),
        onPressed: widget.onPressed,
    child: widget.icon,
    );
  }
}