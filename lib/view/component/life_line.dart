import 'package:flutter/material.dart';

class LifeLine extends StatefulWidget {
  @override
  _LifeLineState createState() => _LifeLineState();
}

class _LifeLineState extends State<LifeLine> {
  Color _buttonColor = Colors.yellow;
  bool _isButtonEnable = true;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () => _isButtonEnable ? _makeQuestionHalf() : null,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(_buttonColor),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45),
            ),
          ),
        ),
        icon: Icon(Icons.star_half),
        label: Text("1/2"));
  }

  _makeQuestionHalf() {
    print("lifeline is pushed");
    setState(() {
      _buttonColor = Colors.grey;
      _isButtonEnable = false;
    });
  }
}
