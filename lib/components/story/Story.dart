import 'package:flutter/material.dart';
import 'package:hackday_stories/components/story/StoryProgressIndicator.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 70.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            StoryProgressIndicator(),
            StoryProgressIndicator(),
            StoryProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
