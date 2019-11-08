import 'package:flutter/material.dart';
import 'package:hackday_stories/components/story/Story.dart';

import 'storiesNav.dart';

Widget renderStories(context, snapshot) {
  if (snapshot.hasData) {
    final data = snapshot.data;
    print(data.slides);
    print(data.amount);

    return Stack(
        children: [
            Container(
              child: Story(),
              color: Colors.black,
            ),
            storiesNav(),
        ],
    );
  }

  // By default, show a loading spinner.
  return CircularProgressIndicator();
}
