import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tambola_frontend/constants/strings.dart';
import 'package:tambola_frontend/models/guestuser.dart';
import 'package:tambola_frontend/models/user.dart';
import 'package:tambola_frontend/providers/user_provider.dart';
import 'package:tambola_frontend/services/error_handling.dart';

class AuthService {
  Future<dynamic> signUpWithPhone(
      {required BuildContext context,
      required String name,
      required String mobile,
      required String password}) async {
    try {
      User user = User(name: name, mobile: mobile, password: password);
      debugPrint(user.name);

      http.Response res = await http.post(
        Uri.parse('$baseUri/auth/register'),
        body: jsonEncode //user.toJson(),
            ({
          "authType": "Local",
          "username": name,
          "mobile": mobile,
          "password": password
        }),
        headers: <String, String>{
          'Content-Type': 'application/json;charset=UTF-8'
        },
      );
      httpErrorHandle(
          response: res,
          onSuccess: () {
            debugPrint("Signed in successfully!");
            Navigator.pushNamedAndRemoveUntil(
                context, '/login', (route) => false);
          });
    } catch (e) {
      debugPrint(e.toString());
    }
    Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
  }

  Future<GuestUser?> guestUser(String name) async {
    var response = await http.post(
        Uri.http('vorps-tambola-api.herokuapp.com',
            'api/670734adceddsfefhh!23541@/guestuser/create?name'),
        body: {"errMessage": name});
    var data = response.body;
    print(data);
    if (response.statusCode == 201) {
      String responseString = response.body;
      GuestUser.fromJson(responseString);
    } else
      return null;
    return null;
  }

  // Future<GuestModel> guestUserapi({
  //   required BuildContext context,
  //   required String name,
  // }) async {
  //   try {
  //     GuestUser user = GuestUser(
  //       errMessage: name,
  //     );
  //     debugPrint(user.errMessage);

  //     http.Response res = await http.post(
  //       Uri.parse(
  //           'https://vorps-tambola-api.herokuapp.com/api/670734adceddsfefhh!23541@/guestuser/create?name'),
  //       body: jsonEncode //user.toJson(),
  //           ({
  //         "authType": "Local",
  //         "username": name,
  //       }),
  //       headers: <String, String>{
  //         'Content-Type': 'application/json;charset=UTF-8'
  //       },
  //     );
  //     httpErrorHandle(
  //         response: res,
  //         onSuccess: () {
  //           debugPrint("Guest login in successfully!");
  //           Navigator.pushNamedAndRemoveUntil(
  //               context, '/select-room', (route) => false);
  //         });
  //   } catch (e) {
  //     debugPrint(e.toString());
  //   }
  //   Navigator.pushNamedAndRemoveUntil(
  //       context, '/select-room', (route) => false);
  // }

  Future<dynamic> signInWithUsernameOrPhone(
      {required String username,
      required String password,
      required BuildContext context}) async {
    var response = await http.post(Uri.parse('$baseUriDummy/api/login'),
        body: jsonEncode({'username': username, 'password': password}),
        headers: <String, String>{
          'Content-Type': 'application/json;charset=UTF-8'
        });

    debugPrint(response.statusCode.toString());
    debugPrint(response.body);
    httpErrorHandle(
        response: response,
        onSuccess: () async {
          Provider.of<UserProvider>(context, listen: false)
              .setUser(response.body);

          SharedPreferences preferences = await SharedPreferences.getInstance();
          await preferences.setString(
              'x-auth-token', jsonDecode(response.body)['token']);
          debugPrint(preferences.getString('x-auth-token').toString());
          Navigator.pushNamed(context, '/select-room');
        });
    Navigator.pushNamed(context, '/select-room');
  }

  Future<dynamic> signOutUser(BuildContext context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove('x-auth-token');
    Navigator.pushNamed(context, '/login');
  }

  static Future<bool> isLoggedIn() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var isTokenExist = preferences.containsKey('x-auth-token');
    return isTokenExist;
  }
}
