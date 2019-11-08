import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  bool isActive;
  dynamic data;

  Story(data, bool isActive) {
    this.isActive = isActive;
    this.data = data;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              child: Image.network(
                this.data['media']['url'],
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
              ),
              flex: 1,
            ),
          ],
        ),
        Positioned(
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Text(
              this.data['legend'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Color.fromRGBO(255, 255, 255, 0.8),
              ),
            ),
          ),
          left: 0,
          top: 700,
          bottom: 0,
          right: 0,
        )
      ],
    );
  }
}
