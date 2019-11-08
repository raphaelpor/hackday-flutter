import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class StoryProgressIndicator extends StatefulWidget {
  bool isActive;

  StoryProgressIndicator(bool isActive) {
    this.isActive = isActive;
  }

  createState() {
    return StoryProgressIndicatorState(this.isActive);
  }
}

class StoryProgressIndicatorState extends State<StoryProgressIndicator> {
  bool isActive;

  StoryProgressIndicatorState(bool isActive) {
    this.isActive = isActive;
  }

  Widget build(BuildContext context) {
    return Expanded(
      child: LinearPercentIndicator(
        animation: this.isActive,
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
