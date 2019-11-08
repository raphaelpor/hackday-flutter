import 'package:flutter/material.dart';
import 'package:hackday_stories/components/story/StoryProgressIndicator.dart';

class Story extends StatelessWidget {
  bool isActive;
  dynamic data;

  Story(data, bool isActive) {
    this.isActive = isActive;
    this.data = data;
  }

  Widget indicator() {
    return Padding(
      padding: EdgeInsets.only(top: 70.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: Row(
          children: <Widget>[
            StoryProgressIndicator(true),
            StoryProgressIndicator(false),
            StoryProgressIndicator(false),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        indicator(),
        Text(this.data['legend']),
        Image.network(this.data['media']['url']),
      ],
    );
  }
}
