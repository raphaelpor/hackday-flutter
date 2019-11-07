import 'package:flutter/material.dart';
import 'components/Button.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Draftjs',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hackday'),
        ),
        body: Center(
          child: button(),
        ),
      ),
    );
  }
}

