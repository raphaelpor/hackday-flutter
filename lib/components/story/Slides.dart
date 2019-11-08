import 'package:flutter/material.dart';
import 'package:hackday_stories/components/story/Story.dart';
import 'package:hackday_stories/components/story/StoryProgressIndicator.dart';

import 'package:hackday_stories/components/storiesNav.dart';

class Slides extends StatefulWidget {
  dynamic snapshot;

  Slides(dynamic snapshot) {
    this.snapshot = snapshot;
  }

  createState() {
    return _SlideState(this.snapshot);
  }
}

class _SlideState extends State<Slides> {
  dynamic snapshot;

  // State
  int activeIndex = 0;

  _SlideState(dynamic snapshot) {
    this.snapshot = snapshot;
  }

  onNextPressed() {}

  onPreviusPressed() {}

  onLongPressStart() {}

  onLongPressEnd() {}

  Widget build(BuildContext context) {
    if (this.snapshot.hasData) {
      final data = snapshot.data;
      print(data.slides);
      print(data.amount);

      return Stack(
        children: [
          Story(data.slides[0], false),
          storyProgressIndicator(),
          storiesNav(
            onNextPressed,
            onPreviusPressed,
            onLongPressStart,
            onLongPressEnd,
          ),
        ],
      );
    }

    // By default, show a loading spinner.
    return CircularProgressIndicator();
  }
}
