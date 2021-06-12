import 'package:db_sample_demo/main.dart';
import 'package:db_sample_demo/model/db/database.dart';
import 'package:flutter/material.dart';

class ViewModel extends ChangeNotifier {

  List<Question> _questions = [];
  List<Question> get questions => _questions;

  Future<void> getAllQuiz() async {
    _questions = await database.allQuestions;
    print("$_questions from _view_model");
    notifyListeners();
  }
}
