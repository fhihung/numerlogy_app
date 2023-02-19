import 'package:flutter/material.dart';
import './secondroute.dart';

void main() {
  runApp(const SecondRoute());
}

class MyApps extends StatelessWidget {
  const MyApps({super.key});

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
                onPressed: () => Navigator.pushNamed(context, "/"),
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

// class RouteTwo extends StatelessWidget {
//   const RouteTwo({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         useMaterial3: true,
//       ),
//       home: Scaffold(
//         backgroundColor: Color(0xFFFEFCF3),
//         appBar: AppBar(
//           backgroundColor: Color(0xFFFEFCF3),
//           centerTitle: true,
//           title: Text(
//             'Con số chủ đạo',
//             style: TextStyle(
//                 fontFamily: 'Inter', fontSize: 26, color: Color(0xFF6A3807)),
//           ),
//           actions: [
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.more_vert_rounded),
//             ),
//           ],
//         ),
//         body: Container(
//           child: Column(
//             children: [
//               Container(
//                 child: Text(
//                   'Nguyen Phi Hung',
//                   style: TextStyle(fontFamily: 'Inter', fontSize: 20),
//                 ),
//               ),
//               Container(
//                 child: Text(
//                   '19/09/2003',
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ),
//               Row(
//                 children: const <Widget>[
//                   Expanded(
//                     child: SizedBox(
//                       child: TextButton(
//                           onPressed: null, child: Text('Các số chính')),
//                     ),
//                   ),
//                   Expanded(
//                     child: SizedBox(
//                       child: TextButton(
//                           onPressed: null, child: Text('Các số phụ')),
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 children: [
//                   Container(
//                     padding:
//                         EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Color.fromARGB(255, 255, 201, 136),
//                         onPrimary: Color(0xFFFEFCF3),
//                       ),
//                       child: Row(
//                         children: [
//                           Expanded(
//                             flex: 2,
//                             child: Container(
//                               width: 60,
//                               child: ListTile(
//                                 title: Text('Con số đường đời'),
//                                 subtitle: Text('Con đường bạn sẽ trải qua'),
//                               ),
//                               // padding: EdgeInsets.all(40),
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(right: 40),
//                             child: Text(
//                               '6',
//                               style:
//                                   TextStyle(fontSize: 20, fontFamily: 'Inter'),
//                             ),
//                           ),
//                         ],
//                       ),
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                     ),
//                   ),
//                   Container(
//                     padding:
//                         EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Color.fromARGB(255, 255, 201, 136),
//                         onPrimary: Color(0xFFFEFCF3),
//                       ),
//                       child: Row(
//                         children: [
//                           Expanded(
//                             flex: 2,
//                             child: Container(
//                               width: 60,
//                               child: ListTile(
//                                 title: Text('Con số định mệnh'),
//                                 subtitle: Text('Mục tiêu cuộc đời bạn'),
//                               ),
//                               // padding: EdgeInsets.all(40),
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(right: 40),
//                             child: Text(
//                               '7',
//                               style:
//                                   TextStyle(fontSize: 20, fontFamily: 'Inter'),
//                             ),
//                           ),
//                         ],
//                       ),
//                       onPressed: () {},
//                     ),
//                   ),
//                   Container(
//                     padding:
//                         EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Color.fromARGB(255, 255, 201, 136),
//                         onPrimary: Color(0xFFFEFCF3),
//                       ),
//                       child: Row(
//                         children: [
//                           Expanded(
//                             flex: 2,
//                             child: Container(
//                               width: 60,
//                               child: ListTile(
//                                 title: Text('Con số tâm hồn'),
//                                 subtitle: Text('Mong muốn bên trong bạn'),
//                               ),
//                               // padding: EdgeInsets.all(40),
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(right: 40),
//                             child: Text(
//                               '9',
//                               style:
//                                   TextStyle(fontSize: 20, fontFamily: 'Inter'),
//                             ),
//                           ),
//                         ],
//                       ),
//                       onPressed: () {},
//                     ),
//                   ),
//                   Container(
//                     padding:
//                         EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Color.fromARGB(255, 255, 201, 136),
//                         onPrimary: Color(0xFFFEFCF3),
//                       ),
//                       child: Row(
//                         children: [
//                           Expanded(
//                             flex: 2,
//                             child: Container(
//                               width: 60,
//                               child: ListTile(
//                                 title: Text('Con số tính cách'),
//                                 subtitle: Text('Cách bạn thể hiện bên ngoài'),
//                               ),
//                               // padding: EdgeInsets.all(40),
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(right: 40),
//                             child: Text(
//                               '7',
//                               style:
//                                   TextStyle(fontSize: 20, fontFamily: 'Inter'),
//                             ),
//                           ),
//                         ],
//                       ),
//                       onPressed: () {},
//                     ),
//                   ),
//                   Container(
//                     padding:
//                         EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 6),
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Color.fromARGB(255, 255, 201, 136),
//                         onPrimary: Color(0xFFFEFCF3),
//                       ),
//                       child: Row(
//                         children: [
//                           Expanded(
//                             flex: 2,
//                             child: Container(
//                               width: 60,
//                               child: ListTile(
//                                 title: Text('Con số ngày sinh'),
//                                 subtitle: Text('Năng khiếu tự nhiên'),
//                               ),
//                               // padding: EdgeInsets.all(40),
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(right: 40),
//                             child: Text(
//                               '19',
//                               style:
//                                   TextStyle(fontSize: 20, fontFamily: 'Inter'),
//                             ),
//                           ),
//                         ],
//                       ),
//                       onPressed: () {},
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         drawer: Drawer(
//           // width: 250,
//           shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//                 topRight: Radius.circular(20),
//                 bottomRight: Radius.circular(20)),
//           ),
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: [
//               DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Color(0xFFFEFCF3),
//                 ),
//                 child: Align(
//                     alignment: Alignment.topCenter,
//                     child: Column(
//                       children: [
//                         Container(
//                           child: Text(
//                             'Nguyen Phi Hung',
//                             style: TextStyle(
//                                 color: Color(0xFF6A3807),
//                                 fontFamily: 'Inter',
//                                 fontSize: 20),
//                           ),
//                         ),
//                         Container(
//                           child: Text('19/09/2003'),
//                         )
//                       ],
//                     )),
//               ),
//               ListTile(
//                 title: const Text('Hồ sơ'),
//                 onTap: () {
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(builder: (context) => MyApps()),
//                   );
//                 },
//               ),
//               ListTile(
//                 title: const Text('Con số chủ đạo'),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//               ListTile(
//                 title: const Text('Ma trận tâm lý'),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//               ListTile(
//                 title: const Text('Biểu đồ ngày sinh'),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//               ListTile(
//                 title: const Text('Năng lượng gia tăng'),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//               ListTile(
//                 title: const Text('Con số tương hợp'),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
