import 'package:flutter/material.dart';
import 'package:numerology_app/widgets/thirdroute.dart';
import '../widgets/secondroute.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:pull_down_button/pull_down_button.dart';
import 'package:numerology_app/main.dart';
import 'package:numerology_app/main.dart';
import '../widgets/textnumber.dart';
import 'numbers.dart';

// DetailNumber('Con số đường đời', duong_doi);
class DuongDoiRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ddNumbers('Con số đường đời', duong_doi);
  }
}

class VanMenhRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return vmNumbers('Con số vận mệnh', van_menh);
  }
}

class LinhHonRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return lhNumbers('Con số linh hồn', linh_hon);
  }
}

class TinhCachRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return tcNumbers('Con số tính cách', tinh_cach);
  }
}

class NgaySinhRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return nsNumbers('Con số ngày sinh', ngay_sinh);
  }
}

class NgayCaNhan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ncnNumbers('Ngày cá nhân', ngay_ca_nhan);
  }
}

class ThangCaNhan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return tcnNumbers('Tháng cá nhân', thang_ca_nhan);
  }
}

class NamCaNhan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return namcnNumbers('Năm cá  nhân', nam_ca_nhan);
  }
}
