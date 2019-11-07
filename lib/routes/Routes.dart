import 'package:flutter/material.dart';
import 'package:hackday_stories/screens/Stories.dart';

Route routes(RouteSettings settings) {
  return MaterialPageRoute(
    builder: (context) {
      return Stories();
    },
  );
}
