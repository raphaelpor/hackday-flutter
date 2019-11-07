import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'BodyData.dart';

Future<BodyData> fetchPost() async {
  final response =
      await http.get('https://native-leon.globo.com/feed/ge');

  if (response.statusCode == 200) {
    print(">>> 200");
    return BodyData.fromJson(json.decode(response.body));
  } else {
    print(">>> error");
    throw Exception('Failed to load post');
  }
}