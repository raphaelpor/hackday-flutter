import 'package:flutter/material.dart';

import './navComponents/gestureDetector.dart';
import './navComponents/openContent.dart';

Widget storiesNav(
  onNextPressed,
  onPreviusPressed,
  onLongPressStart,
  onLongPressEnd,
) {
  return Column(
    children: <Widget>[
      Expanded(
        child: Row(
          children: <Widget>[
            gestureDetector(
              onPreviusPressed,
              onLongPressStart,
              onLongPressEnd,
            ),
            gestureDetector(
              onNextPressed,
              onLongPressStart,
              onLongPressEnd,
            )
          ],
        ),
      ),
      openContent(),
    ],
  );
}
