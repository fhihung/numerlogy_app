import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import './detailnumber.dart';
import '../main.dart';
import '../textnumber.dart';

class ddNumbers extends StatelessWidget {
  final String mainNumber;
  final String titleNumber;

  ddNumbers(this.mainNumber, this.titleNumber);

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
            mainNumber,
            style: TextStyle(
                fontFamily: 'Inter', fontSize: 26, color: Color(0xFF6A3807)),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  titleNumber,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 60,
                      color: Color(0xFF6A3807)),
                ),
              ),
              DDNumber()
            ],
          ),
        ));
  }
}

class vmNumbers extends StatelessWidget {
  final String mainNumber;
  final String titleNumber;

  vmNumbers(this.mainNumber, this.titleNumber);

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
            mainNumber,
            style: TextStyle(
                fontFamily: 'Inter', fontSize: 26, color: Color(0xFF6A3807)),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  titleNumber,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 60,
                      color: Color(0xFF6A3807)),
                ),
              ),
              VMNumber()
            ],
          ),
        ));
  }
}

class lhNumbers extends StatelessWidget {
  final String mainNumber;
  final String titleNumber;

  lhNumbers(this.mainNumber, this.titleNumber);

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
            mainNumber,
            style: TextStyle(
                fontFamily: 'Inter', fontSize: 26, color: Color(0xFF6A3807)),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  titleNumber,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 60,
                      color: Color(0xFF6A3807)),
                ),
              ),
              LHNumber()
            ],
          ),
        ));
  }
}

class tcNumbers extends StatelessWidget {
  final String mainNumber;
  final String titleNumber;

  tcNumbers(this.mainNumber, this.titleNumber);

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
            mainNumber,
            style: TextStyle(
                fontFamily: 'Inter', fontSize: 26, color: Color(0xFF6A3807)),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  titleNumber,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 60,
                      color: Color(0xFF6A3807)),
                ),
              ),
              TCNumber()
            ],
          ),
        ));
  }
}

class nsNumbers extends StatelessWidget {
  final String mainNumber;
  final String titleNumber;

  nsNumbers(this.mainNumber, this.titleNumber);

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
            mainNumber,
            style: TextStyle(
                fontFamily: 'Inter', fontSize: 26, color: Color(0xFF6A3807)),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  titleNumber,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 60,
                      color: Color(0xFF6A3807)),
                ),
              ),
              NSNumber()
            ],
          ),
        ));
  }
}

class ncnNumbers extends StatelessWidget {
  final String mainNumber;
  final String titleNumber;

  ncnNumbers(this.mainNumber, this.titleNumber);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFEFCF3),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).popAndPushNamed("/sophu");
              // handle the press
            },
          ),
          backgroundColor: Color(0xFFFEFCF3),
          centerTitle: true,
          title: Text(
            mainNumber,
            style: TextStyle(
                fontFamily: 'Inter', fontSize: 26, color: Color(0xFF6A3807)),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  titleNumber,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 60,
                      color: Color(0xFF6A3807)),
                ),
              ),
              NCNNumber()
            ],
          ),
        ));
  }
}

class namcnNumbers extends StatelessWidget {
  final String mainNumber;
  final String titleNumber;

  namcnNumbers(this.mainNumber, this.titleNumber);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFEFCF3),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).popAndPushNamed("/sophu");
              // handle the press
            },
          ),
          backgroundColor: Color(0xFFFEFCF3),
          centerTitle: true,
          title: Text(
            mainNumber,
            style: TextStyle(
                fontFamily: 'Inter', fontSize: 26, color: Color(0xFF6A3807)),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  titleNumber,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 60,
                      color: Color(0xFF6A3807)),
                ),
              ),
              NamCNNumber()
            ],
          ),
        ));
  }
}

class tcnNumbers extends StatelessWidget {
  final String mainNumber;
  final String titleNumber;

  tcnNumbers(this.mainNumber, this.titleNumber);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFEFCF3),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).popAndPushNamed("/sophu");
              // handle the press
            },
          ),
          backgroundColor: Color(0xFFFEFCF3),
          centerTitle: true,
          title: Text(
            mainNumber,
            style: TextStyle(
                fontFamily: 'Inter', fontSize: 26, color: Color(0xFF6A3807)),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  titleNumber,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 60,
                      color: Color(0xFF6A3807)),
                ),
              ),
              TCNNumber()
            ],
          ),
        ));
  }
}
