import 'package:flutter/material.dart';
import '../main.dart';
// import './secondroute.dart';
// import './thirdroute.dart';
// import 'numbers/eachnumber.dart';
import '../models/text.dart';

String duong_doi_text = "";
String van_menh_text = "";
String linh_hon_text = "";
String tinh_cach_text = "";
String ngay_sinh_text = "";
String ngay_ca_nhan_text = "";
String thang_ca_nhan_text = "";
String nam_ca_nhan_text = "";

class DDNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (duong_doi == '1') {
      duong_doi_text = duong_doi_1;
    } else if (duong_doi == '2') {
      duong_doi_text = duong_doi_2;
    } else if (duong_doi == '3') {
      duong_doi_text = duong_doi_3;
    } else if (duong_doi == '4') {
      duong_doi_text = duong_doi_4;
    } else if (duong_doi == '5') {
      duong_doi_text = duong_doi_5;
    } else if (duong_doi == '6') {
      duong_doi_text = duong_doi_6;
    } else if (duong_doi == '7') {
      duong_doi_text = duong_doi_7;
    } else if (duong_doi == '8') {
      duong_doi_text = duong_doi_8;
    } else if (duong_doi == '9') {
      duong_doi_text = duong_doi_9;
    } else if (duong_doi == '11') {
      duong_doi_text = duong_doi_11;
    } else if (duong_doi == '22') {
      duong_doi_text = duong_doi_22;
    } else if (duong_doi == '33') {
      duong_doi_text = duong_doi_33;
    }
    return Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Text(
              duong_doi_text,
              style: TextStyle(),
            ),
          ],
        )));
  }
}

class VMNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (van_menh == '1') {
      van_menh_text = van_menh_1;
    } else if (van_menh == '2') {
      van_menh_text = van_menh_2;
    } else if (van_menh == '3') {
      van_menh_text = van_menh_3;
    } else if (van_menh == '4') {
      van_menh_text = van_menh_4;
    } else if (van_menh == '5') {
      van_menh_text = van_menh_5;
    } else if (van_menh == '6') {
      van_menh_text = van_menh_6;
    } else if (van_menh == '7') {
      van_menh_text = van_menh_7;
    } else if (van_menh == '8') {
      van_menh_text = van_menh_8;
    } else if (van_menh == '9') {
      van_menh_text = van_menh_9;
    } else if (van_menh == '11') {
      van_menh_text = van_menh_11;
    } else if (van_menh == '22') {
      van_menh_text = van_menh_22;
    } else if (van_menh == '33') {
      van_menh_text = van_menh_33;
    }
    return Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Text(
              van_menh_text,
              style: TextStyle(),
            ),
          ],
        )));
  }
}

class LHNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (linh_hon == '1') {
      linh_hon_text = linh_hon_1;
    } else if (linh_hon == '2') {
      linh_hon_text = linh_hon_2;
    } else if (linh_hon == '3') {
      linh_hon_text = linh_hon_3;
    } else if (linh_hon == '4') {
      linh_hon_text = linh_hon_4;
    } else if (linh_hon == '5') {
      linh_hon_text = linh_hon_5;
    } else if (linh_hon == '6') {
      linh_hon_text = linh_hon_6;
    } else if (linh_hon == '7') {
      linh_hon_text = linh_hon_7;
    } else if (linh_hon == '8') {
      linh_hon_text = linh_hon_8;
    } else if (linh_hon == '9') {
      linh_hon_text = linh_hon_9;
    } else if (linh_hon == '11') {
      linh_hon_text = linh_hon_11;
    } else if (linh_hon == '22') {
      linh_hon_text = linh_hon_22;
    } else if (linh_hon == '33') {
      linh_hon_text = linh_hon_33;
    }
    return Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Text(
              linh_hon_text,
              style: TextStyle(),
            ),
          ],
        )));
  }
}

class TCNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (tinh_cach == '1') {
      tinh_cach_text = tinh_cach_1;
    } else if (tinh_cach == '2') {
      tinh_cach_text = tinh_cach_2;
    } else if (tinh_cach == '3') {
      tinh_cach_text = tinh_cach_3;
    } else if (tinh_cach == '4') {
      tinh_cach_text = tinh_cach_4;
    } else if (tinh_cach == '5') {
      tinh_cach_text = tinh_cach_5;
    } else if (tinh_cach == '6') {
      tinh_cach_text = tinh_cach_6;
    } else if (tinh_cach == '7') {
      tinh_cach_text = tinh_cach_7;
    } else if (tinh_cach == '8') {
      tinh_cach_text = tinh_cach_8;
    } else if (tinh_cach == '9') {
      tinh_cach_text = tinh_cach_9;
    } else if (tinh_cach == '11') {
      tinh_cach_text = tinh_cach_11;
    } else if (tinh_cach == '22') {
      tinh_cach_text = tinh_cach_22;
    } else if (tinh_cach == '33') {
      tinh_cach_text = tinh_cach_33;
    }
    return Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Text(
              tinh_cach_text,
              style: TextStyle(),
            ),
          ],
        )));
  }
}

class NSNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (ngay_sinh == '1') {
      ngay_sinh_text = ngay_sinh_1;
    } else if (ngay_sinh == '2') {
      ngay_sinh_text = ngay_sinh_2;
    } else if (ngay_sinh == '3') {
      ngay_sinh_text = ngay_sinh_3;
    } else if (ngay_sinh == '4') {
      ngay_sinh_text = ngay_sinh_4;
    } else if (ngay_sinh == '5') {
      ngay_sinh_text = ngay_sinh_5;
    } else if (ngay_sinh == '6') {
      ngay_sinh_text = ngay_sinh_6;
    } else if (ngay_sinh == '7') {
      ngay_sinh_text = ngay_sinh_7;
    } else if (ngay_sinh == '8') {
      ngay_sinh_text = ngay_sinh_8;
    } else if (ngay_sinh == '9') {
      ngay_sinh_text = ngay_sinh_9;
    } else if (ngay_sinh == '11') {
      ngay_sinh_text = ngay_sinh_11;
    } else if (ngay_sinh == '22') {
      ngay_sinh_text = ngay_sinh_22;
    }
    return Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Text(
              ngay_sinh_text,
              style: TextStyle(),
            ),
          ],
        )));
  }
}

class NCNNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (ngay_ca_nhan == '1') {
      ngay_ca_nhan_text = ngay_ca_nhan_1;
    } else if (ngay_ca_nhan == '2') {
      ngay_ca_nhan_text = ngay_ca_nhan_2;
    } else if (ngay_ca_nhan == '3') {
      ngay_ca_nhan_text = ngay_ca_nhan_3;
    } else if (ngay_ca_nhan == '4') {
      ngay_ca_nhan_text = ngay_ca_nhan_4;
    } else if (ngay_ca_nhan == '5') {
      ngay_ca_nhan_text = ngay_ca_nhan_5;
    } else if (ngay_ca_nhan == '6') {
      ngay_ca_nhan_text = ngay_ca_nhan_6;
    } else if (ngay_ca_nhan == '7') {
      ngay_ca_nhan_text = ngay_ca_nhan_7;
    } else if (ngay_ca_nhan == '8') {
      ngay_ca_nhan_text = ngay_ca_nhan_8;
    } else if (ngay_ca_nhan == '9') {
      ngay_ca_nhan_text = ngay_ca_nhan_9;
    }
    return Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Text(
              ngay_ca_nhan_text,
              style: TextStyle(),
            ),
          ],
        )));
  }
}

class TCNNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (thang_ca_nhan == '1') {
      thang_ca_nhan_text = thang_ca_nhan_1;
    } else if (thang_ca_nhan == '2') {
      thang_ca_nhan_text = thang_ca_nhan_2;
    } else if (thang_ca_nhan == '3') {
      thang_ca_nhan_text = thang_ca_nhan_3;
    } else if (thang_ca_nhan == '4') {
      thang_ca_nhan_text = thang_ca_nhan_4;
    } else if (thang_ca_nhan == '5') {
      thang_ca_nhan_text = thang_ca_nhan_5;
    } else if (thang_ca_nhan == '6') {
      thang_ca_nhan_text = thang_ca_nhan_6;
    } else if (thang_ca_nhan == '7') {
      thang_ca_nhan_text = thang_ca_nhan_7;
    } else if (thang_ca_nhan == '8') {
      thang_ca_nhan_text = thang_ca_nhan_8;
    } else if (thang_ca_nhan == '9') {
      thang_ca_nhan_text = thang_ca_nhan_9;
    }
    return Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Text(
              thang_ca_nhan_text,
              style: TextStyle(),
            ),
          ],
        )));
  }
}

class NamCNNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (nam_ca_nhan == '1') {
      nam_ca_nhan_text = nam_ca_nhan_1;
    } else if (nam_ca_nhan == '2') {
      nam_ca_nhan_text = nam_ca_nhan_2;
    } else if (nam_ca_nhan == '3') {
      nam_ca_nhan_text = nam_ca_nhan_3;
    } else if (nam_ca_nhan == '4') {
      nam_ca_nhan_text = nam_ca_nhan_4;
    } else if (nam_ca_nhan == '5') {
      nam_ca_nhan_text = nam_ca_nhan_5;
    } else if (nam_ca_nhan == '6') {
      nam_ca_nhan_text = nam_ca_nhan_6;
    } else if (nam_ca_nhan == '7') {
      nam_ca_nhan_text = nam_ca_nhan_7;
    } else if (nam_ca_nhan == '8') {
      nam_ca_nhan_text = nam_ca_nhan_8;
    } else if (nam_ca_nhan == '9') {
      nam_ca_nhan_text = nam_ca_nhan_9;
    } else if (nam_ca_nhan == '11') {
      nam_ca_nhan_text = nam_ca_nhan_11;
    } else if (nam_ca_nhan == '22') {
      nam_ca_nhan_text = nam_ca_nhan_22;
    }
    return Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Text(
              nam_ca_nhan_text,
              style: TextStyle(),
            ),
          ],
        )));
  }
}
//     } else if (mainNum == "van_menh") {
//       if (van_menh == '1') {
//         lala = van_menh_1;
//       } else if (van_menh == '2') {
//         lala = van_menh_2;
//       } else if (van_menh == '3') {
//         lala = van_menh_3;
//       } else if (van_menh == '4') {
//         lala = van_menh_4;
//       } else if (van_menh == '5') {
//         lala = van_menh_5;
//       } else if (van_menh == '6') {
//         lala = van_menh_6;
//       } else if (van_menh == '7') {
//         lala = van_menh_7;
//       } else if (van_menh == '8') {
//         lala = van_menh_8;
//       } else if (van_menh == '9') {
//         lala = van_menh_9;
//       } else if (van_menh == '11') {
//         lala = van_menh_11;
//       } else if (van_menh == '22') {
//         lala = van_menh_22;
//       } else if (van_menh == '33') {
//         lala = van_menh_33;
//       }
//     } else if (mainNum == "linh_hon") {
//       if (linh_hon == '1') {
//         lala = linh_hon_1;
//       } else if (linh_hon == '2') {
//         lala = linh_hon_2;
//       } else if (linh_hon == '3') {
//         lala = linh_hon_3;
//       } else if (linh_hon == '4') {
//         lala = linh_hon_4;
//       } else if (linh_hon == '5') {
//         lala = linh_hon_5;
//       } else if (linh_hon == '6') {
//         lala = linh_hon_6;
//       } else if (linh_hon == '7') {
//         lala = linh_hon_7;
//       } else if (linh_hon == '8') {
//         lala = linh_hon_8;
//       } else if (linh_hon == '9') {
//         lala = linh_hon_9;
//       } else if (linh_hon == '11') {
//         lala = linh_hon_11;
//       } else if (linh_hon == '22') {
//         lala = linh_hon_22;
//       } else if (linh_hon == '33') {
//         lala = linh_hon_33;
//       }
//     } else if (mainNum == "tinh_cach") {
//       if (tinh_cach == '1') {
//         lala = tinh_cach_1;
//       } else if (tinh_cach == '2') {
//         lala = tinh_cach_2;
//       } else if (tinh_cach == '3') {
//         lala = tinh_cach_3;
//       } else if (tinh_cach == '4') {
//         lala = tinh_cach_4;
//       } else if (tinh_cach == '5') {
//         lala = tinh_cach_5;
//       } else if (tinh_cach == '6') {
//         lala = tinh_cach_6;
//       } else if (tinh_cach == '7') {
//         lala = tinh_cach_7;
//       } else if (tinh_cach == '8') {
//         lala = tinh_cach_8;
//       } else if (tinh_cach == '9') {
//         lala = tinh_cach_9;
//       } else if (tinh_cach == '11') {
//         lala = tinh_cach_11;
//       } else if (tinh_cach == '22') {
//         lala = tinh_cach_22;
//       } else if (tinh_cach == '33') {
//         lala = tinh_cach_33;
//       }
//     } else if (mainNum == "ngay_sinh") {
//       if (ngay_sinh == '1') {
//         lala = ngay_sinh_1;
//       } else if (ngay_sinh == '2') {
//         lala = ngay_sinh_2;
//       } else if (ngay_sinh == '3') {
//         lala = ngay_sinh_3;
//       } else if (ngay_sinh == '4') {
//         lala = ngay_sinh_4;
//       } else if (ngay_sinh == '5') {
//         lala = ngay_sinh_5;
//       } else if (ngay_sinh == '6') {
//         lala = ngay_sinh_6;
//       } else if (ngay_sinh == '7') {
//         lala = ngay_sinh_7;
//       } else if (ngay_sinh == '8') {
//         lala = ngay_sinh_8;
//       } else if (ngay_sinh == '9') {
//         lala = ngay_sinh_9;
//       } else if (ngay_sinh == '11') {
//         lala = ngay_sinh_11;
//       } else if (ngay_sinh == '22') {
//         lala = ngay_sinh_22;
//       } else if (ngay_sinh == '33') {
//         lala = ngay_sinh_33;
//       }
//     }
//     return Container(
//         padding: EdgeInsets.all(20),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Text(
//                 lala,
//                 style: TextStyle(),
//               ),
//             ],
//           ),
//         ));
//   }
// }
