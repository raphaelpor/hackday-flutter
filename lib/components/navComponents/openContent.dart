import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

navigate(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Widget openContent(String url) {
  return GestureDetector(
    onTap: () {
      navigate(url);
    },
    onVerticalDragStart: (_) {
      navigate(url);
    },
    onVerticalDragEnd: (_) {
      navigate(url);
    },
    child: Container(
      height: 50,
      color: Colors.transparent,
    ),
    // padding: EdgeInsets.all(0.0),
  );
}
