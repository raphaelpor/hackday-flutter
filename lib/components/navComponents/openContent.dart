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
      child: Stack(
        children: <Widget> [
          Padding(
            child: Align(
              child: Icon(
                Icons.keyboard_arrow_up,
                color: Colors.white,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              alignment: Alignment.topCenter,
            ),
            padding: EdgeInsets.only(bottom: 10.0),
          ),
          Padding(
            child: Center(
              child: Text(
                'Abrir',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
            ),
            padding: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
      height: 50,
      color: Colors.transparent,
    ),
    // padding: EdgeInsets.all(0.0),
  );
}
