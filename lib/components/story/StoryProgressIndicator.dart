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
      child: LinearProgressIndicator(
        backgroundColor: Colors.blue,
      ),
    );
  }
}
