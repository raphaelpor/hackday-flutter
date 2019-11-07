import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class StoryProgressIndicator extends StatefulWidget {
  createState() {
    return StoryProgressIndicatorState();
  }
}

class StoryProgressIndicatorState extends State<StoryProgressIndicator> {
  bool isActive = true;

  Widget build(BuildContext context) {
    return Expanded(
      child: LinearPercentIndicator(
        animation: isActive,
        animationDuration: 4000,
        lineHeight: 3,
        backgroundColor: Colors.grey,
        percent: 1,
        progressColor: Colors.white,
        // valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      ),
    );
  }
}
