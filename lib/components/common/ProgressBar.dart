import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressBar extends StatefulWidget {
  bool isActive;

  ProgressBar(bool isActive) {
    this.isActive = isActive;
  }

  createState() {
    return _ProgressBarState(this.isActive);
  }
}

class _ProgressBarState extends State<ProgressBar> {
  bool isActive;

  _ProgressBarState(bool isActive) {
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
