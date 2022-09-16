import 'dart:convert';

import 'package:flutter/cupertino.dart';

class User extends ChangeNotifier {
  String? language;
  String? name;
  String? mobile;
  String? password;

  int activeIndex = 0;
  int totalIndex = 2;
  User({this.language, this.name, this.mobile, this.password});

  Map<String, dynamic> toMap() {
    return {'username': name, 'mobile': mobile, 'password': password};
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
        name: map['username'] ?? '',
        mobile: map['mobile'] ?? '',
        password: map['password']);
  }

  String toJson() => json.encode(toMap());
  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
