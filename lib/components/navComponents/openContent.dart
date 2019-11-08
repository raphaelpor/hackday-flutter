import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

navigate() async {
  const url = 'https://flutter.io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Widget openContent() {
  return GestureDetector(
    onTap: () {
      navigate();
    },
    onVerticalDragStart: (_) {
      navigate();
    },
    onVerticalDragEnd: (_) {
      navigate();
    },
    child: Container(
      height: 50,
      color: Colors.transparent,
    ),
    // padding: EdgeInsets.all(0.0),
  );
}
