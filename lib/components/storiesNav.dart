import 'package:flutter/material.dart';

Widget storiesNav() {
  return Column(
    children: <Widget>[
      Expanded(
        child: Row(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('anterior');
                },
                child: Container(),
                // padding: EdgeInsets.all(0.0),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('onTap');
                },
                onLongPressStart: (_) {
                  print('onLongPressStart');
                },
                onLongPressEnd: (_) {
                  print('onLongPressEnd');
                },
                child: Container(color: Colors.transparent),
                // padding: EdgeInsets.all(0.0),
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          print('navegar');
        },
        child: Container(height: 50),
        // padding: EdgeInsets.all(0.0),
      ),
    ],
  );
}
