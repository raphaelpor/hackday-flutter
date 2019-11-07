import 'package:flutter/material.dart';
import 'package:hackday_stories/components/story/Story.dart';

import 'storiesNav.dart';

Widget renderStories(context, snapshot) {
  if (snapshot.hasData) {
    final data = snapshot.data;
    final title = data.title;
    print(title);
    print(data.stories);

    return Container(
      child: Story(),
      color: Colors.black,
    );
  }

  // By default, show a loading spinner.
  return CircularProgressIndicator();
}
