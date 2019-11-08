import 'package:flutter/material.dart';
import '../components/common/Button.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hackday'),
      ),
      body: Center(
        child: button(context),
      ),
    );
  }
}
