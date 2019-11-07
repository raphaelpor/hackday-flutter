import 'package:flutter/material.dart';

Widget button() {
  return MaterialButton(
    child: Text('Open Stories'),
    onPressed: () => print('pressed!'),
  );
}
