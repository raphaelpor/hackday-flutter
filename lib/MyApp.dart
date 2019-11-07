import 'package:flutter/material.dart';
import 'package:hackday_stories/Stories.dart';
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
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) {
            return Stories();
          },
        );
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hackday'),
        ),
        body: Center(
          child: Button(),
        ),
      ),
    );
  }
}
