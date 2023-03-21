import 'package:flutter/material.dart';
import '../main.dart';
import './buttoncustom.dart';
import '../numbers/eachnumber.dart';

class SoPhu extends StatefulWidget {
  @override
  SoPhuState createState() => new SoPhuState();
}

class SoPhuState extends State<SoPhu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFCF3),
      appBar: AppBar(
        backgroundColor: Color(0xFFFEFCF3),
        centerTitle: true,
        title: Text(
          'Con số chủ đạo',
          style: TextStyle(
              fontFamily: 'Inter', fontSize: 26, color: Color(0xFF6A3807)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_rounded),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Text(
                name,
                style: TextStyle(fontFamily: 'Inter', fontSize: 20),
              ),
            ),
            Container(
              child: Text(
                day + '/' + month + '/' + year,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: SizedBox(
                    child: TextButton(
                      child: Text('Các số chính'),
                      onPressed: () {
                        Navigator.of(context).popAndPushNamed("/second");
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).popAndPushNamed("/sophu");
                        },
                        child: Text('Các số phụ')),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
                    child: ButtonCustom('Ngày cá nhân', ngay_ca_nhan, '', () {
                      Navigator.of(context).popAndPushNamed("/ngay_ca_nhan");
                    })),
                Container(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
                    child: ButtonCustom('Tháng cá nhân', thang_ca_nhan, '', () {
                      Navigator.of(context).popAndPushNamed("/thang_ca_nhan");
                    })),
                Container(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
                    child: ButtonCustom('Năm cá nhân', nam_ca_nhan, '', () {
                      Navigator.of(context).popAndPushNamed("/nam_ca_nhan");
                    })),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        // width: 250,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFFEFCF3),
              ),
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          name,
                          style: TextStyle(
                              color: Color(0xFF6A3807),
                              fontFamily: 'Inter',
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        child: Text(day + '/' + month + '/' + year),
                      )
                    ],
                  )),
            ),
            ListTile(
              title: const Text('Hồ sơ'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Con số chủ đạo'),
              onTap: () {
                Navigator.of(context).popAndPushNamed("/second");
              },
            ),
            ListTile(
              title: const Text('Ma trận tâm lý'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Biểu đồ ngày sinh'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Năng lượng gia tăng'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Con số tương hợp'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Con số tương hợp'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Thoát'),
              onTap: () {
                Navigator.of(context).popAndPushNamed("/");
              },
            ),
          ],
        ),
      ),
    );
  }
}
