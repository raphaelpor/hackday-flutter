import 'package:flutter/material.dart';
import 'package:hackday_stories/Stories.dart';

Route routes(RouteSettings settings) {
  return MaterialPageRoute(
    builder: (context) {
      return Stories();
    },
  );
}
