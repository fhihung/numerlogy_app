import 'dart:convert';
import './main.dart';
import 'package:http/http.dart' as http;

// void main() async {
//   http.Response response = await createInfo("Bob", "09", "09", "2003");

//   print(response.body);
// }

// Future<Info> createInfo(
//     String name, String day, String month, String year) async {
//   return http.post(
//     Uri.parse('http://127.0.0.1:5000/models'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, String>{
//       'name': name,
//       'job': day,
//       'month': month,
//       'year': year
//     }),
//   );
// }
Future<Info> createInfo(
    String name, String day, String month, String year) async {
  final response = await http.post(
    Uri.parse('http://127.0.0.1:5000/models'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'name': name,
      'job': day,
      'month': month,
      'year': year
    }),
  );

  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return Info.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create Info.');
  }
}

class Info {
  final String name;
  final String day;
  final String month;
  final String year;

  const Info(
      {required this.name,
      required this.day,
      required this.month,
      required this.year});

  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(name: 'name', day: 'day', month: 'month', year: 'year');
  }
}

// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// Future<Info> createAlbum(String title) async {
//   final response = await http.post(
//     Uri.parse('https://jsonplaceholder.typicode.com/albums'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, String>{
//       'title': title,
//     }),
//   );

//   if (response.statusCode == 201) {
//     // If the server did return a 201 CREATED response,
//     // then parse the JSON.
//     return Info.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 201 CREATED response,
//     // then throw an exception.
//     throw Exception('Failed to create album.');
//   }
// }

// class Info {
//   final int id;
//   final String title;

//   const Info({required this.id, required this.title});

//   factory Info.fromJson(Map<String, dynamic> json) {
//     return Info(
//       id: json['id'],
//       title: json['title'],
//     );
//   }
// }