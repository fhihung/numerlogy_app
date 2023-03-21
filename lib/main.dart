import 'package:flutter/material.dart';
import 'numbers/eachnumber.dart';
import './secondroute.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import './widgets/sophu.dart';

String duong_doi = "";
String van_menh = "";
String linh_hon = "";
String tinh_cach = "";
String ngay_sinh = "";
String ngay_ca_nhan = "";
String thang_ca_nhan = "";
String nam_ca_nhan = "";
String name = "";
String day = "";
String month = "";
String year = "";
DateTime now = DateTime.now();
String current_day = "17";
String current_month = "3";
String current_year = "2023";
// String current_day = DateTime(now.day) as String;
// String current_month = DateTime(now.month) as String;
// String current_year = DateTime(now.year) as String;

void main() {
  runApp(MyApp());
}

// final name = TextEditingController();
// final date = TextEditingController();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      title: 'Flutter App',
      // home: MyHomePage(title: 'Numerology'),
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(
              title: "Numerology",
            ),
        "/second": (context) => SecondRoute(),
        "/sophu": (context) => SoPhu(),
        "/duongdoi": (context) => DuongDoiRoute(),
        "/vanmenh": (context) => VanMenhRoute(),
        "/linhhon": (context) => LinhHonRoute(),
        "/tinhcach": (context) => TinhCachRoute(),
        "/ngaysinh": (context) => NgaySinhRoute(),
        "/ngay_ca_nhan": (context) => NgayCaNhan(),
        "/thang_ca_nhan": (context) => ThangCaNhan(),
        "/nam_ca_nhan": (context) => NamCaNhan(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  String date = "";

  final _formkey = GlobalKey<FormState>();
  Future<void> _savingData() async {
    final validation = _formkey.currentState!.validate();

    if (!validation) {
      return;
    }
    _formkey.currentState!.save();
  }

  final nameController = TextEditingController();
  final dayController = TextEditingController();
  final monthController = TextEditingController();
  final yearController = TextEditingController();
  // String current_day = DateTime.now().day as String;
  // String current_month = DateTime.now().month as String;
  // String current_year = DateTime.now().year as String;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Form(
                key: _formkey,
                child: TextFormField(
                  onSaved: (value) {
                    name = value as String;
                  },
                  controller: nameController,
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
          Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      controller: dayController,
                      decoration: InputDecoration(
                        hintText: 'Ngày',
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
                      onChanged: (value) => day = dayController.text as String,
                      // readOnly: false,
                      // onTap: () async {
                      //   // DateTime? pickedDate = await showDatePicker(
                      //   //     context: context,
                      //   //     initialDate: DateTime.now(),
                      //   //     firstDate: DateTime(2000),
                      //   //     lastDate: DateTime(2200));
                      //   // if (pickedDate != null) {
                      //   //   print(pickedDate);
                      //   //   String formattedDate =
                      //   //       DateFormat('dd/MM/yyyy').format(pickedDate);
                      //   //   print(formattedDate);
                      //   //   String date_post = formattedDate;
                      //   //   setState(() {
                      //   //     dateController.text = formattedDate;
                      //   //   });
                      //   // }
                      // },
                    ),
                  ),
                  Container(
                    width: 100,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      controller: monthController,
                      decoration: InputDecoration(
                        hintText: 'Tháng',
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
                      onChanged: (value) =>
                          month = monthController.text as String,
                    ),
                  ),
                  Container(
                    width: 100,
                    child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        controller: yearController,
                        decoration: InputDecoration(
                          hintText: 'Năm',
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
                        onChanged: (value) async {
                          year = yearController.text as String;
                          _savingData();
                          final url =
                              'https://6e20-118-70-209-177.ap.ngrok.io/example';
                          // final url = 'http://127.0.0.1:5000/example';
                          final response = await http.post(
                            Uri.parse(url),
                            headers: {"Content-Type": "application/json"},
                            body: json.encode({
                              'name': name,
                              'day': day,
                              'month': month,
                              'year': year,
                              'current_day': current_day,
                              'current_month': current_month,
                              'current_year': current_year
                            }),
                          );
                          ;
                        }),
                  ),
                ],
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
              onPressed: () async {
                await Navigator.of(context).popAndPushNamed("/second");
              },
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
          ),

          Container(
            child: ElevatedButton(
              child: Text('get'),
              onPressed: () async {
                final url = 'https://6e20-118-70-209-177.ap.ngrok.io/example';
                // final url = 'http://127.0.0.1:5000/example';

                final response = await http.get(Uri.parse(url));
                final decoded =
                    json.decode(response.body) as Map<String, dynamic>;
                setState(() {
                  van_menh = decoded['van_menh'];
                  linh_hon = decoded['linh_hon'];
                  tinh_cach = decoded['tinh_cach'];
                  duong_doi = decoded['duong_doi'];
                  ngay_sinh = decoded['ngay_sinh'];
                  ngay_ca_nhan = decoded['ngay_ca_nhan'];
                  thang_ca_nhan = decoded['thang_ca_nhan'];
                  nam_ca_nhan = decoded['nam_ca_nhan'];
                });
              },
            ),
          ),
          // Container(
          //   alignment: Alignment.center,
          //   child: Text(
          //     van_menh,
          //     style: TextStyle(
          //         fontSize: 24,
          //         backgroundColor: Color.fromARGB(255, 255, 255, 255)),
          //   ),
          // ),
          Container(
            alignment: Alignment.center,
            child: Text(
              linh_hon,
              style: TextStyle(
                  fontSize: 24,
                  backgroundColor: Color.fromARGB(255, 255, 255, 255)),
            ),
          )
        ],
      ),
    );
  }
}
