import 'package:flutter/material.dart';

Widget gestureDetector(onTap) {
  return Expanded(
    child: GestureDetector(
      onTap: onTap,
      onLongPressStart: (_) {
        print('onLongPressStart');
      },
      onLongPressEnd: (_) {
        print('onLongPressEnd');
      },
      child: Container(color: Colors.transparent),
      // padding: EdgeInsets.all(0.0),
    ),
  );
}
