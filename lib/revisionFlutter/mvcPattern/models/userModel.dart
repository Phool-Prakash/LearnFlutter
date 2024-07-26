import 'package:flutter/material.dart';

class User {
  final String userName;
  String? token;
  final String refreshToken;
  User({this.token, required this.userName, required this.refreshToken});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(userName: json['userName'], refreshToken: json['refreshToken']);
  }

  void updateToken(String newToken) {
    token = newToken;
  }
}
