import 'package:db_sample_demo/data/life_line_satus.dart';
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: LifeLineButton(
            lifeLineStatus: LIFE_LINE_STATUS.TELEPHONE,
            icon: Icon(Icons.call),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: LifeLineButton(
            lifeLineStatus: LIFE_LINE_STATUS.FIFTY_FIFTY,
            icon: Icon(Icons.star_half),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: LifeLineButton(
            lifeLineStatus: LIFE_LINE_STATUS.AUDIENCE,
            icon: Icon(Icons.people),
          ),
        ),
      ],
    );
  }
}
