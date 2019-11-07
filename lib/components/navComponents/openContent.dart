import 'package:flutter/material.dart';

Widget openContent() {
  return GestureDetector(
    onTap: () {
      print('navegar');
    },
    onVerticalDragStart: (_) {
      print('onVerticalDragStart');
    },
    onVerticalDragEnd: (_) {
      print('onVerticalDragEnd');
    },
    child: Container(
      height: 50,
      color: Colors.transparent,
    ),
    // padding: EdgeInsets.all(0.0),
  );
}
