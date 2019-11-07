import 'package:flutter/material.dart';
import 'package:hackday_stories/screens/Home.dart';

import './routes/Routes.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Draftjs',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      onGenerateRoute: routes,
      home: Home(),
    );
  }
}
