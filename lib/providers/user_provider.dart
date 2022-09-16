import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tambola_frontend/models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(name: "", language: "english", mobile: "", password: "");

  User get user => _user;

  void setUser(String user) {
    _user = User.fromJson(user);
    notifyListeners();
  }
}
