import 'package:flutter/material.dart';

class SelectToggle extends StatefulWidget {
  @override
  _SelectToggleSate createState() => _SelectToggleSate();
}

class _SelectToggleSate extends State<SelectToggle> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _value,
      activeColor: Colors.yellowAccent,
      activeTrackColor: Colors.amber,
      onChanged: (choice) {
        _value = choice;
        setState(() {
          print("$_value");
        });
      },
    );
  }
}
