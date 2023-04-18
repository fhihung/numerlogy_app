import 'package:flutter/material.dart';
import 'numbers/eachnumber.dart';
import 'widgets/secondroute.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
import './widgets/sophu.dart';
import './theme/text_theme.dart';
import './theme/theme.dart';
import './utils/colors.dart';

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

final String current_day = DateFormat.d().format(now);
final String current_month = DateFormat.M().format(now);
final String current_year = DateFormat.y().format(now);

void main() {
  runApp(MyApp());
}

// final name = TextEditingController();
// final date = TextEditingController();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Color(0xFFFEFCF3),
        brightness: Brightness.light,
        useMaterial3: true,
        textTheme: TextTheme(
          headline1: TextStyle(
              color: Color(0xFF6A3807), fontSize: 28, fontFamily: 'Inter'),
          headline2: TextStyle(fontSize: 18, color: Color(0xFF6A3807)),
          headline3: TextStyle(color: Color(0xFFC7B49C), fontSize: 16),
          headline4: TextStyle(fontSize: 13, color: Color(0xFF6A3807)),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFEA9E43),
                onPrimary: Color(0xFFFEFCF3),
                minimumSize: Size(360, 60))),
      ),
      darkTheme: ThemeData(
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
        textTheme: TextTheme(
          headline1: TextStyle(
              color: DarkColors.mainDarkColor,
              fontSize: 28,
              fontFamily: 'Inter'),
          headline2: TextStyle(fontSize: 18, color: DarkColors.mainDarkColor),
          headline3: TextStyle(
              color: Color.fromARGB(255, 177, 236, 215), fontSize: 16),
          headline4: TextStyle(fontSize: 13, color: DarkColors.mainDarkColor),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 13, 213, 150),
                onPrimary: Color(0xFFFEFCF3),
                minimumSize: Size(360, 60))),
      ),
      themeMode: ThemeMode.system,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tạo hồ sơ'),
        // backgroundColor: Color(0xFFFEFCF3),
        titleTextStyle: Theme.of(context).textTheme.headline1,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 25, top: 5, bottom: 0, right: 5),
              margin: EdgeInsets.all(0),
              child: Text(
                "Nhập tên của bạn",
                style: Theme.of(context).textTheme.headline2,
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
                      hintStyle: Theme.of(context).textTheme.headline3,
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
                style: Theme.of(context).textTheme.headline2,
              ),
              alignment: Alignment.bottomLeft,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        controller: dayController,
                        decoration: InputDecoration(
                          hintText: 'Ngày',
                          hintStyle: Theme.of(context).textTheme.headline3,
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
                            day = dayController.text as String,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        controller: monthController,
                        decoration: InputDecoration(
                          hintText: 'Tháng',
                          hintStyle: Theme.of(context).textTheme.headline3,
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
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      // margin: EdgeInsets.only(right: 10),
                      child: Expanded(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          controller: yearController,
                          decoration: InputDecoration(
                            hintText: 'Năm',
                            hintStyle: Theme.of(context).textTheme.headline3,
                            // errorText: 'Error Text',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xFF6A3807)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xFF6A3807)),
                            ),
                          ),
                          onChanged: (value) async {
                            year = yearController.text as String;
                            ;
                          },
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
              padding: EdgeInsets.only(left: 15, top: 5, bottom: 0, right: 5),
              margin: EdgeInsets.all(0),
              child: Text(
                "Họ tên và ngày tháng năm sinh sẽ cho bạn biết con đường mà bạn sẽ bước đi trong cuộc đời và những tài năng mà bạn được trao tặng.",
                style: Theme.of(context).textTheme.headline4,
              ),
              alignment: Alignment.bottomLeft,
            ),
            Container(
              padding: EdgeInsets.only(top: 40),
              child: ElevatedButton(
                onPressed: () async {
                  _savingData();
                  final url = 'https://f833-118-70-209-177.ap.ngrok.io/example';
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
                  // final url = 'https://6e20-118-70-209-177.ap.ngrok.io/example';
                  // final url = 'http://127.0.0.1:5000/example';

                  final response1 = await http.get(Uri.parse(url));
                  final decoded =
                      json.decode(response1.body) as Map<String, dynamic>;
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
                  await Future.delayed(const Duration(milliseconds: 100), () {
                    Navigator.of(context).popAndPushNamed("/second");
                  });
                  await Navigator.of(context).popAndPushNamed("/second");
                },
                child: Text(
                  'Tiếp tục',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              alignment: Alignment.bottomCenter,
            ),
            // Container(
            //   alignment: Alignment.center,
            //   child: Text(
            //     current_month,
            //     style: TextStyle(
            //         fontSize: 24,
            //         backgroundColor: Color.fromARGB(255, 255, 255, 255)),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
