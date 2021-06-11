import 'package:db_sample_demo/main.dart';
import 'package:db_sample_demo/model/db/database.dart';
import 'package:db_sample_demo/viewmodel/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Question> questions = [];

  @override
  void initState() {
    //_getAllQuestions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ViewModel>(context, listen: false);
    Future(() async {
      await viewModel.getAllQuiz();
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("MVVM Sample"),
        centerTitle: true,
      ),
      body: Container(
        child: Consumer<ViewModel>(
          builder: (context, model, child){
            return ListView.builder(
              itemCount: model.questions.length,
                itemBuilder: (context, int position) => ListTile(
              title: Text(model.questions[position].question),
              subtitle: Text(model.questions[position].answer),
            ),);
          },
        ),
      ),
    );
  }

  Future<void> _getAllQuestions() async {
    // final viewModel = Provider.of<ViewModel>(context, listen: false);
    // await viewModel.getAllQuiz();

    // questions = await database.allQuestions;
    // setState(() {
    // });
  }
}
