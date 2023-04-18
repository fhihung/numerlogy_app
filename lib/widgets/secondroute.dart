import 'package:flutter/material.dart';
import '../main.dart';
import 'buttoncustom.dart';
import '../numbers/eachnumber.dart';

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
                      child: Text('Các số phụ'),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
                    child: ButtonCustom('Con số đường đời', duong_doi,
                        'Con đường bạn sẽ trải qua', () {
                      Navigator.of(context).popAndPushNamed("/duongdoi");
                    })),
                Container(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
                    child: ButtonCustom(
                        'Con số vận mệnh', van_menh, 'Mục tiêu cuộc đời bạn',
                        () {
                      Navigator.of(context).popAndPushNamed("/vanmenh");
                    })),
                Container(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
                    child: ButtonCustom(
                        'Con số linh hồn', linh_hon, 'Mong muốn bên trong bạn',
                        () {
                      Navigator.of(context).popAndPushNamed("/linhhon");
                    })),
                Container(
                  padding:
                      EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
                  child: ButtonCustom("Con số tính cách", tinh_cach,
                      'Cách bạn thể hiện bên ngoài', () {
                    Navigator.of(context).popAndPushNamed("/tinhcach");
                  }),
                ),
                Container(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
                    child: ButtonCustom(
                        'Con số ngày sinh', ngay_sinh, 'Năng khiếu tự nhiên',
                        () {
                      Navigator.of(context).popAndPushNamed("/ngaysinh");
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
