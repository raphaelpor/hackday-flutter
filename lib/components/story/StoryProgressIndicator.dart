import 'package:flutter/material.dart';

class StoryProgressIndicator extends StatefulWidget {
  createState() {
    return StoryProgressIndicatorState();
  }
}

class StoryProgressIndicatorState extends State<StoryProgressIndicator> {
  bool isActive = true;

  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 2, right: 2),
            child: LinearProgressIndicator(
              backgroundColor: Colors.blue,
            )));
  }
}
