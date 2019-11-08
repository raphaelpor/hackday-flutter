import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressBar extends StatefulWidget {
  bool isActive;

  ProgressBar(bool isActive) {
    this.isActive = isActive;
  }

  createState() {
    return ProgressBarState(this.isActive);
  }
}

class ProgressBarState extends State<ProgressBar> {
  bool isActive;

  ProgressBarState(bool isActive) {
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
      ),
    );
  }
}
