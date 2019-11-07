import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
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
          title: Text('Stories'),
        ),
        body: Center(
          child: Text(
            "Teste",
            style: TextStyle(
              fontSize: 42.0,
              color: Color.fromRGBO(17, 17, 17, 1.0),
              fontWeight: FontWeight.bold,
            ),
          ),,
        ),
      ),
    );
  }
}

