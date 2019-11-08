import 'dart:async';

import 'package:flutter/material.dart';

import '../components/story/Slides.dart';
import '../helpers/fetchPost.dart';
import '../helpers/BodyData.dart';

Widget slidesBuilder(context, snapshot) {
  if (snapshot.hasData) {
    return Slides(snapshot);
  }

  return CircularProgressIndicator();
}

class Stories extends StatefulWidget {
  Stories({Key key}) : super(key: key);

  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  Future<BodyData> post;

  @override
  void initState() {
    super.initState();
    post = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Draftjs',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        body: Center(
          child: FutureBuilder<BodyData>(
            future: post,
            builder: slidesBuilder,
          ),
        ),
      ),
    );
  }
}
