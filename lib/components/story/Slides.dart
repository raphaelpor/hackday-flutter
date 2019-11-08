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

  onNextPressed() {
    if (activeIndex <= this.snapshot.data.amount - 1) {
      setState(() {
        activeIndex += 1;
      });
    }
    print('onNextPressed');
    print(activeIndex);
  }

  onPreviusPressed() {
    if (activeIndex > 0) {
      setState(() {
        activeIndex -= 1;
      });
    }
    print('onPreviusPressed');
    print(activeIndex);
  }

  onLongPressStart(_) {
    print('onLongPressStart');
  }

  onLongPressEnd(_) {
    print('onLongPressEnd');
  }

  Widget build(BuildContext context) {
    if (this.snapshot.hasData) {
      final data = snapshot.data;

      return Stack(
        children: [
          Story(data.slides[0], false),
          storyProgressIndicator(data.amount, activeIndex),
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
