import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:flutter/services.dart' show rootBundle;

import 'BodyData.dart';

Future<BodyData> fetchPost() async {
  print(">>> before http");
  final response =
      await http.get('https://jsonplaceholder.typicode.com/posts/1');
  print(">>> after http");

  if (response.statusCode == 200) {
    print(">>> 200");
    // If the call to the server was successful, parse the JSON.
    return BodyData.fromJson(json.decode(response.body));
  } else {
    print(">>> error");
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}

// Future<BodyData> fetchPost() async {
//   print(">>> before");
//   String jsonAsset =  await rootBundle.loadString("assets/resourceMock.json");
//   print(">>> jsonAsset");
//   return BodyData.fromJson(json.decode(jsonAsset));
// }