import 'package:flutter/material.dart';
import '../components/Button.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hackday'),
      ),
      body: Center(
        child: Button(context),
      ),
    );
  }
}
