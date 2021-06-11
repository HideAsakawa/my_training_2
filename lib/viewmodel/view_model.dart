import 'package:db_sample_demo/main.dart';
import 'package:db_sample_demo/model/db/database.dart';
import 'package:flutter/material.dart';

class ViewModel extends ChangeNotifier {

  List<Question> _questions = [];

  Future<void> getAllQuiz() async {
    _questions = await database.allQuestions;
    print(_questions);
    print("from_view_model");
    notifyListeners();
  }
}
