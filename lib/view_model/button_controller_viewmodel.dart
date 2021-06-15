import 'package:flutter/material.dart';

class ButtonControllerViewModel extends ChangeNotifier {
  Color _buttonColor = Colors.redAccent;
  Color get buttonColor => _buttonColor;

  changeColor() {
    _buttonColor = Colors.grey;
    notifyListeners();
  }
}