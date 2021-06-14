import 'package:db_sample_demo/main.dart';
import 'package:db_sample_demo/model/db/database.dart';
import 'package:flutter/material.dart';

class ViewModel extends ChangeNotifier {

  List<Question> _questions = [];
  List<Question> get questions => _questions;

  Color _buttonColor = Colors.grey;
  Color get buttonColor => _buttonColor;

  Future<void> getAllQuiz() async {
    _questions = await database.allQuestions;
    print(" from _view_model: $_questions");
    notifyListeners();
  }

  getButtonColor(){
    notifyListeners();
  }
}