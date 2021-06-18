import 'package:db_sample_demo/model/db/database.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class QuizDataViewModel extends ChangeNotifier {

  List<Question> _allQuestion = [];
  List<Question> get allQuestion => _allQuestion;

  Future<void> getAllQuestion() async {
    _allQuestion = await database.allQuestions;
    notifyListeners();
  }
}
