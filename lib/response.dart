import './main.dart';
import './numbers.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> makePostRequest() async {
  final url = 'http://127.0.0.1:5000/example';
  // final url = 'http://127.0.0.1:9999/example';
  final response = await http.post(
    Uri.parse(url),
    body: json.encode({
      'full_name': 'hung',
    }),
    headers: {"Content-Type": "application/json"},
  );
}
