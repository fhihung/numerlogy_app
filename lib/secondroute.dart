import 'package:flutter/material.dart';
import './main.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
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
                      child: TextButton(
                          onPressed: null, child: Text('Các số phụ')),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 201, 136),
                        onPrimary: Color(0xFFFEFCF3),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              width: 60,
                              child: ListTile(
                                title: Text('Con số đường đời'),
                                subtitle: Text('Con đường bạn sẽ trải qua'),
                              ),
                              // padding: EdgeInsets.all(40),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 40),
                            child: Text(
                              '6',
                              style:
                                  TextStyle(fontSize: 20, fontFamily: 'Inter'),
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 201, 136),
                        onPrimary: Color(0xFFFEFCF3),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              width: 60,
                              child: ListTile(
                                title: Text('Con số định mệnh'),
                                subtitle: Text('Mục tiêu cuộc đời bạn'),
                              ),
                              // padding: EdgeInsets.all(40),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 40),
                            child: Text(
                              '7',
                              style:
                                  TextStyle(fontSize: 20, fontFamily: 'Inter'),
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 201, 136),
                        onPrimary: Color(0xFFFEFCF3),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              width: 60,
                              child: ListTile(
                                title: Text('Con số tâm hồn'),
                                subtitle: Text('Mong muốn bên trong bạn'),
                              ),
                              // padding: EdgeInsets.all(40),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 40),
                            child: Text(
                              '9',
                              style:
                                  TextStyle(fontSize: 20, fontFamily: 'Inter'),
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 201, 136),
                        onPrimary: Color(0xFFFEFCF3),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              width: 60,
                              child: ListTile(
                                title: Text('Con số tính cách'),
                                subtitle: Text('Cách bạn thể hiện bên ngoài'),
                              ),
                              // padding: EdgeInsets.all(40),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 40),
                            child: Text(
                              '7',
                              style:
                                  TextStyle(fontSize: 20, fontFamily: 'Inter'),
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 201, 136),
                        onPrimary: Color(0xFFFEFCF3),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              width: 60,
                              child: ListTile(
                                title: Text('Con số ngày sinh'),
                                subtitle: Text('Năng khiếu tự nhiên'),
                              ),
                              // padding: EdgeInsets.all(40),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 40),
                            child: Text(
                              '19',
                              style:
                                  TextStyle(fontSize: 20, fontFamily: 'Inter'),
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => MyApps()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        drawer: Drawer(
          // width: 250,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)),
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
                onTap: () {},
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
      ),
    );
  }
}
