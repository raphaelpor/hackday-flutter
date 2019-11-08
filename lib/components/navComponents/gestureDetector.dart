import 'package:flutter/material.dart';

Widget gestureDetector(
  onTap,
  onLongPressStart,
  onLongPressEnd,
) {
  return Expanded(
    child: GestureDetector(
      onTap: onTap,
      onLongPressStart: onLongPressStart,
      onLongPressEnd: onLongPressEnd,
      child: Container(color: Colors.transparent),
      // padding: EdgeInsets.all(0.0),
    ),
  );
}
