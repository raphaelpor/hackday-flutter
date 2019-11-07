import 'dart:async';

import 'package:flutter/material.dart';

import 'components/renderStories.dart';
import 'helpers/fetchPost.dart';
import 'helpers/BodyData.dart';

class Stories extends StatefulWidget {
  Stories({Key key}) : super(key: key);

  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  Future<BodyData> post;

  // Stories({Key key, this.post}) : super(key: key);

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
        appBar: AppBar(
          title: Text('Stories'),
        ),
        body: Center(
          child: FutureBuilder<BodyData>(
            future: post,
            builder: renderStories,
          ),
        ),
      ),
    );
  }
}

