import 'package:flutter/material.dart';

import './navComponents/gestureDetector.dart';

Widget storiesNav() {
  return Column(
    children: <Widget>[
      Expanded(
        child: Row(
          children: <Widget>[
            gestureDetector(() => { print('tap 1') }),
            gestureDetector(() => { print('tap 2') }),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          print('navegar');
        },
        child: Container(
          height: 50,
          color: Colors.transparent,
        ),
        // padding: EdgeInsets.all(0.0),
      ),
    ],
  );
}
