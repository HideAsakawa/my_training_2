import 'package:flutter/material.dart';

class LifeLine extends StatefulWidget {
  @override
  _LifeLineState createState() => _LifeLineState();
}

class _LifeLineState extends State<LifeLine> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () => null,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45),
            ),
          ),
        ),
        icon: Icon(Icons.star_half),
        label: Text("1/2",));
  }
}