import 'package:db_sample_demo/view_model/button_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnswerButton extends StatefulWidget {
  final String label;
  final onPressed;

  AnswerButton({this.label, this.onPressed});

  @override
  _AnswerButtonState createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  ButtonController _buttonController;

  @override
  Widget build(BuildContext context) {
    _buttonController = Provider.of<ButtonController>(context, listen: false);

    return Consumer<ButtonController>(
      builder: (context, model, child){
        return ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(_buttonController.buttonColor),
            ),
            onPressed: widget.onPressed,
            child: Text(widget.label));
      }

    );
  }
}


