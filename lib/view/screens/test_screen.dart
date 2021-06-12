import 'package:db_sample_demo/view_model/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen>{
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
}