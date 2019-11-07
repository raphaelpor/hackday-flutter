import 'package:flutter/material.dart';

import 'storiesNav.dart';

Widget renderStories(context, snapshot) {
  if (snapshot.hasData) {
    final data = snapshot.data;
    final title = data.title;
    print(title);
    print(data.stories);

    return Container(
      child: storiesNav(),
      color: Colors.black,
    );
  }

  // By default, show a loading spinner.
  return CircularProgressIndicator();
}