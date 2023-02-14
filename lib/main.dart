import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        // backgroundColor: Color.fromARGB(255, 190, 170, 79),
      ),
      home: Scaffold(
        backgroundColor: Color(0xFFFEFCF3),
        appBar: AppBar(
          title: Text('Tạo hồ sơ'),
          backgroundColor: Color(0xFFFEFCF3),
          titleTextStyle: TextStyle(
              color: Color(0xFF6A3807), fontSize: 28, fontFamily: 'Inter'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 25, top: 5, bottom: 0, right: 5),
              margin: EdgeInsets.all(0),
              child: Text(
                "Nhập tên của bạn",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF6A3807),
                ),
              ),
              alignment: Alignment.bottomLeft,
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Họ và tên',
                    hintStyle: TextStyle(color: Color(0xFFC7B49C)),
                    // errorText: 'Error Text',
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFF6A3807)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFF6A3807)),
                    ),
                  ),
                )),
            Container(
              padding: EdgeInsets.only(left: 25, top: 5, bottom: 0, right: 5),
              margin: EdgeInsets.all(0),
              child: Text(
                "Nhập ngày sinh",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF6A3807),
                ),
              ),
              alignment: Alignment.bottomLeft,
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'dd/mm/yyyy',
                    hintStyle: TextStyle(color: Color(0xFFC7B49C)),
                    // errorText: 'Error Text',
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFF6A3807)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFF6A3807)),
                    ),
                  ),
                )),
            Container(
              padding: EdgeInsets.only(left: 15, top: 5, bottom: 0, right: 5),
              margin: EdgeInsets.all(0),
              child: Text(
                "Họ tên và ngày tháng năm sinh sẽ cho bạn biết con đường mà bạn sẽ bước đi trong cuộc đời và những tài năng mà bạn được trao tặng.",
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xFF6A3807),
                ),
              ),
              alignment: Alignment.bottomLeft,
            ),
            Container(
              padding: EdgeInsets.only(top: 40),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Tiếp tục',
                  style: TextStyle(fontSize: 22),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFEA9E43),
                    onPrimary: Color(0xFFFEFCF3),
                    minimumSize: Size(360, 60)),
              ),
              alignment: Alignment.bottomCenter,
            )
          ],
        ),
      ),
    );
  }
}