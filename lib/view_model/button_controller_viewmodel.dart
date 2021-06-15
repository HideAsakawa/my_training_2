import 'package:flutter/material.dart';

class ButtonControllerViewModel extends ChangeNotifier {
  Color _buttonColor = Colors.yellowAccent;
  Color get buttonColor => _buttonColor;

  changeColor() {
    _buttonColor = Colors.grey;
    notifyListeners();
  }
}