import 'package:flutter/material.dart';


class ButtonControllerViewModel extends ChangeNotifier {
  Color _buttonColor = Colors.yellowAccent;
  Color get buttonColor => _buttonColor;

  // cutQuestion(Color buttonColor) {
  //
  //   notifyListeners();
  // }

  changeColor() {
    _buttonColor = Colors.grey;
    notifyListeners();
  }


}