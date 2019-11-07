import 'package:flutter/material.dart';

Widget button() {
  return MaterialButton(
    child: Text(
      'Open Stories',
      style: TextStyle(
        fontSize: 20,
      ),
    ),
    onPressed: () => print('pressed!'),
    color: Colors.blueAccent,
    textColor: Colors.white,
    height: 50,
  );
}
