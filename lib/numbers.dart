class Numbers {
  String? ngaySinh;
  String? duongDoi;
  String? vanMenh;
  String? linhHon;
  String? tinhCach;
  String? truongThanh;
  String? thaiDo;
  String? ngayCaNhan;
  String? thanhCaNhan;
  String? namCaNhan;

  Numbers(
      {this.ngaySinh,
      this.duongDoi,
      this.vanMenh,
      this.linhHon,
      this.tinhCach,
      this.truongThanh,
      this.thaiDo,
      this.ngayCaNhan,
      this.thanhCaNhan,
      this.namCaNhan});

  Numbers.fromJson(Map<String, dynamic> json) {
    ngaySinh = json['ngay_sinh'];
    duongDoi = json['duong_doi'];
    vanMenh = json['van_menh'];
    linhHon = json['linh_hon'];
    tinhCach = json['tinh_cach'];
    truongThanh = json['truong_thanh'];
    thaiDo = json['thai_do'];
    ngayCaNhan = json['ngay_ca_nhan'];
    thanhCaNhan = json['thanh_ca_nhan'];
    namCaNhan = json['nam_ca_nhan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ngay_sinh'] = this.ngaySinh;
    data['duong_doi'] = this.duongDoi;
    data['van_menh'] = this.vanMenh;
    data['linh_hon'] = this.linhHon;
    data['tinh_cach'] = this.tinhCach;
    data['truong_thanh'] = this.truongThanh;
    data['thai_do'] = this.thaiDo;
    data['ngay_ca_nhan'] = this.ngayCaNhan;
    data['thanh_ca_nhan'] = this.thanhCaNhan;
    data['nam_ca_nhan'] = this.namCaNhan;
    return data;
  }
}
