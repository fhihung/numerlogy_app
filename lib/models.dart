import 'package:flutter/material.dart';
import 'package:numerology_app/thirdroute.dart';
import './secondroute.dart';
// import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
import './models.dart';
import 'package:pull_down_button/pull_down_button.dart';

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFEFCF3),
        appBar: AppBar(
          backgroundColor: Color(0xFFFEFCF3),
          centerTitle: true,
          title: Text(
            'Con số đường đời',
            style: TextStyle(
                fontFamily: 'Inter', fontSize: 26, color: Color(0xFF6A3807)),
          ),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                '6',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 60,
                    color: Color(0xFF6A3807)),
              ),
            ),
          ],
        ));
  }
}
