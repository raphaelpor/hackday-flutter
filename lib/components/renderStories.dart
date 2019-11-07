import 'package:flutter/material.dart';

Widget renderStories(context, snapshot) {
  if (snapshot.hasData) {
    final data = snapshot.data;
    final title = data.title;

    return Center(
      child: Text(
          title,
          style: TextStyle(
            fontSize: 42.0,
            color: Color.fromRGBO(17, 17, 17, 1.0),
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  }

  // By default, show a loading spinner.
  return CircularProgressIndicator();
}