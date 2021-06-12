import 'package:flutter/material.dart';

class ModeSelectButton extends StatefulWidget {
  final mode;
  final VoidCallback destination;

  ModeSelectButton({@required this.mode, @required this.destination});

  @override
  _ModeSelectButtonState createState() => _ModeSelectButtonState();
}

class _ModeSelectButtonState extends State<ModeSelectButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: widget.destination,
          child: Text(widget.mode),
        )
      ],
    );
  }
}
