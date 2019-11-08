import 'package:flutter/material.dart';
import 'package:hackday_stories/components/common/ProgressBar.dart';

renderProgressBar(int amount, int activeIndex) {
  final List<Widget> progressBarArray = [];
  for (var i = 0; i < amount; i++) {
    final isActive = i == activeIndex;
    progressBarArray.add(ProgressBar(isActive));
  }
  return progressBarArray;
}

Widget storyProgressIndicator() {
  return Padding(
    padding: EdgeInsets.only(top: 70.0),
    child: Align(
      alignment: Alignment.topCenter,
      child: Row(
        children: renderProgressBar(5, 2),
      ),
    ),
  );
}
