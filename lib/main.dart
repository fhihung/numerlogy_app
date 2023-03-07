import 'package:flutter/material.dart';
import 'package:numerology_app/thirdroute.dart';
import './secondroute.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
import './models.dart';

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
      home: MyHomePage(title: 'Numerology'),
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
  String name = "";
  String date = "";
  String final_response = "";
  final _formkey = GlobalKey<FormState>();
  Future<void> _savingData() async {
    final validation = _formkey.currentState!.validate();

    if (!validation) {
      return;
    }
    _formkey.currentState!.save();
  }

  final nameController = TextEditingController();
  final dateController = TextEditingController();
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
              child: TextField(
                controller: dateController,
                decoration: InputDecoration(
                  hintText: 'dd/mm/yyyy',
                  hintStyle: TextStyle(color: Color(0xFFC7B49C)),
                  // errorText: 'Error Text',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xFF6A3807)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xFF6A3807)),
                  ),
                ),
                readOnly: false,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2200));
                  if (pickedDate != null) {
                    print(pickedDate);
                    String formattedDate =
                        DateFormat('dd/MM/yyyy').format(pickedDate);
                    print(formattedDate);
                    setState(() {
                      dateController.text = formattedDate;
                    });
                  }
                },
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
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SecondRoute()),
                // );
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      // Retrieve the text the that user has entered by using the
                      // TextEditingController.
                      content: Text(nameController.text + dateController.text),
                    );
                  },
                );
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
              child: Text('p'),
              onPressed: () async {
                //final url = 'http://127.0.0.1:9999/example';
                final url = 'http://127.0.0.1:5000/name';

                final response = await http.post(
                  Uri.parse(url),
                  body: json.encode({'name': name}),
                  headers: {"Content-Type": "application/json"},
                );
              },
            ),
          ),
          Container(
            child: ElevatedButton(
              child: Text('get'),
              onPressed: () async {
                //final url = 'http://127.0.0.1:9999/example';
                final url = 'http://127.0.0.1:5000/name';
                final response = await http.get(Uri.parse(url));
                final decoded =
                    json.encode(response.body) as Map<String, dynamic>;
                setState(() {
                  final_response = decoded['name'];
                });
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              final_response,
              style: TextStyle(
                  fontSize: 24,
                  backgroundColor: Color.fromARGB(255, 232, 225, 225)),
            ),
          )
        ],
      ),
    );
  }
}
