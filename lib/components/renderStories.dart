import 'package:flutter/material.dart';
import 'package:hackday_stories/components/story/Story.dart';

import 'storiesNav.dart';

renderStory(slides) {
  return slides.map<Widget>((item) => Text(item['legend'])).toList();
}

Widget renderStories(context, snapshot) {
  if (snapshot.hasData) {
    final data = snapshot.data;
    print(data.slides);
    print(data.amount);

    return Stack(
      children: [
        Stack(
          children: renderStory(data.slides),
        ),
        storiesNav(),
      ],
    );
  }

  // By default, show a loading spinner.
  return CircularProgressIndicator();
}
