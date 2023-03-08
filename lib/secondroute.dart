import 'package:flutter/material.dart';
import './main.dart';
import 'buttoncustom.dart';
import './models.dart';

class SecondRoute extends StatefulWidget {
  @override
  SecondRouteState createState() => new SecondRouteState();
}

class SecondRouteState extends State<SecondRoute> {
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
                'Nguyen Phi Hung',
                style: TextStyle(fontFamily: 'Inter', fontSize: 20),
              ),
            ),
            Container(
              child: Text(
                '19/09/2003',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Row(
              children: const <Widget>[
                Expanded(
                  child: SizedBox(
                    child: TextButton(
                        onPressed: null, child: Text('Các số chính')),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child:
                        TextButton(onPressed: null, child: Text('Các số phụ')),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
                    child: ButtonCustom(
                        'Con số đường đời', '6', 'Con đường bạn sẽ trải qua',
                        () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdRoute()),
                      );
                    })),
                Container(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
                    child: ButtonCustom('Con số định mệnh', '7',
                        'Mục tiêu cuộc đời bạn', () {})),
                Container(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
                    child: ButtonCustom('Con số tâm hồn', '9',
                        'Mong muốn bên trong bạn', () {})),
                Container(
                  padding:
                      EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
                  child: ButtonCustom("Con số tính cách", final_response,
                      'Cách bạn thể hiện bên ngoài', () {}),
                ),
                Container(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
                    child: ButtonCustom('Con số ngày sinh', '19',
                        'Năng khiếu tự nhiên', () {})),
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
                          'Nguyen Phi Hung',
                          style: TextStyle(
                              color: Color(0xFF6A3807),
                              fontFamily: 'Inter',
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        child: Text('19/09/2003'),
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
                Navigator.pop(context);
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
          ],
        ),
      ),
    );
  }
}
