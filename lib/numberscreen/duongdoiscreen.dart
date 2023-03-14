import 'package:flutter/material.dart';
import 'package:numerology_app/thirdroute.dart';
import '../secondroute.dart';
// import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
import 'duongdoiscreen.dart';
import 'package:pull_down_button/pull_down_button.dart';
import 'package:numerology_app/main.dart';
import 'detailnumber.dart';
import 'package:numerology_app/main.dart';

// DetailNumber('Con số đường đời', duong_doi);
class DuongDoiRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFEFCF3),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).popAndPushNamed("/second");
              // handle the press
            },
          ),
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
                duong_doi,
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

class VanMenhRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFEFCF3),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).popAndPushNamed("/second");
              // handle the press
            },
          ),
          backgroundColor: Color(0xFFFEFCF3),
          centerTitle: true,
          title: Text(
            'Con số vận mệnh',
            style: TextStyle(
                fontFamily: 'Inter', fontSize: 26, color: Color(0xFF6A3807)),
          ),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                van_menh,
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

class LinhHonRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFEFCF3),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).popAndPushNamed("/second");
              // handle the press
            },
          ),
          backgroundColor: Color(0xFFFEFCF3),
          centerTitle: true,
          title: Text(
            'Con số linh hồn',
            style: TextStyle(
                fontFamily: 'Inter', fontSize: 26, color: Color(0xFF6A3807)),
          ),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                linh_hon,
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

class TinhCachRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFEFCF3),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).popAndPushNamed("/second");
              // handle the press
            },
          ),
          backgroundColor: Color(0xFFFEFCF3),
          centerTitle: true,
          title: Text(
            'Con số tính cách',
            style: TextStyle(
                fontFamily: 'Inter', fontSize: 26, color: Color(0xFF6A3807)),
          ),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                tinh_cach,
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

class NgaySinhRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFEFCF3),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).popAndPushNamed("/second");
              // handle the press
            },
          ),
          backgroundColor: Color(0xFFFEFCF3),
          centerTitle: true,
          title: Text(
            'Con số ngày sinh',
            style: TextStyle(
                fontFamily: 'Inter', fontSize: 26, color: Color(0xFF6A3807)),
          ),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                ngay_sinh,
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
