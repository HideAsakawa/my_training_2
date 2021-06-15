import 'package:db_sample_demo/data/life_line_satus.dart';
import 'package:db_sample_demo/view_model/button_controller_viewmodel.dart';
import 'package:db_sample_demo/view_model/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LifeLineButton extends StatefulWidget {
  final icon;
  final onPressed;
  final isButtonEnable = true;
  final lifeLineStatus;

  LifeLineButton({this.onPressed, this.icon, this.lifeLineStatus});

  @override
  _LifeLineButtonState createState() => _LifeLineButtonState();
}

class _LifeLineButtonState extends State<LifeLineButton> {
  Color buttonColor = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
      ),
      onPressed: () {
        switch (widget.lifeLineStatus) {
          case LIFE_LINE_STATUS.TELEPHONE:
            _callTelePhone();
            break;
          case LIFE_LINE_STATUS.FIFTY_FIFTY:
            _makeQuestionHalf();
            break;
          case LIFE_LINE_STATUS.AUDIENCE:
            _askAudience();
            break;
        }
        setState(() {
          buttonColor = Colors.grey;
        });
      },
      child: widget.icon,
    );
  }

  // TODO
  _callTelePhone() {
    print("pressed_telephone");
  }

  // TODO
  _makeQuestionHalf() {
    var viewModel =
        Provider.of<ButtonControllerViewModel>(context, listen: false);
    viewModel.changeColor();
  }

  // TODO
  _askAudience() {
    print("pressed_audience");
  }
}
