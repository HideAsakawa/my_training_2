import 'package:db_sample_demo/view/component/life_line_button.dart';
import 'package:flutter/material.dart';

class LifeLine extends StatefulWidget {
  @override
  _LifeLineState createState() => _LifeLineState();
}

class _LifeLineState extends State<LifeLine> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LifeLineButton(
          onPressed:  () {
            print("pushed telephoneButton");
          },
          icon: Icon(Icons.call),
        ),
        LifeLineButton(
          onPressed: () => print("pushed 1/2Button"),
          icon: Icon(Icons.star_half),
        ),
        LifeLineButton(
          onPressed: () => print("pushed Audience"),
          icon: Icon(Icons.people),
        ),
      ],
    );
  }
}
