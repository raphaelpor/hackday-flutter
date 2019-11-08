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
        Text(this.data['legend']),
      ],
    );
  }
}
