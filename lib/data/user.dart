class User {
  final String id;
  final String pwd;
  final String nm;
  final String pos;
  final String eml;
  final String tel;
  final String sttus;
  final int loginFailCnt;

  User(this.id, this.pwd, this.nm, this.pos, this.eml, this.tel, this.sttus,
      this.loginFailCnt);

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        pwd = json['pwd'],
        nm = json['nm'],
        pos = json['pos'],
        eml = json['eml'],
        tel = json['tel'],
        sttus = json['sttus'],
        loginFailCnt = 0;

  Map<String, dynamic> toJson() => {
        'id': id,
        'pwd': pwd,
        'nm': nm,
        'pos': pos,
        'eml': eml,
        'tel': tel,
        'sttus': sttus,
        'loginFailCnt': loginFailCnt,
      };
}

class Users {
  final List<User> items;
  Users(this.items);

  Users.fromJson(Map<String, dynamic> json)
      : items = List<User>.from(json["items"].map((x) => User.fromJson(x)));
}
