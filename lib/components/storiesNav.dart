import 'package:flutter/material.dart';

import './navComponents/gestureDetector.dart';
import './navComponents/openContent.dart';

Widget storiesNav() {
  return Column(
    children: <Widget>[
      Expanded(
        child: Row(
          children: <Widget>[
            gestureDetector(() => print('tap 1')),
            gestureDetector(() => print('tap 2')),
          ],
        ),
      ),
      openContent(),
    ],
  );
}
