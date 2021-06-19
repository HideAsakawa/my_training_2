import 'package:flutter/material.dart';

class ButtonController extends ChangeNotifier {
  Color _buttonColor = Colors.green;
  Color get buttonColor => _buttonColor;

  void setButtonColor(MaterialColor newColor) {
    _buttonColor = newColor;
    notifyListeners();
  }
}