import 'package:flutter/material.dart';

Widget button(BuildContext context) {
  return MaterialButton(
    child: Text(
      'Open Stories',
      style: TextStyle(
        fontSize: 20,
        fontFamily: 'OpenSans',
      ),
    ),
    onPressed: () => Navigator.pushNamed(context, '/stories'),
    color: Colors.blueAccent,
    textColor: Colors.white,
    height: 50,
  );
}
