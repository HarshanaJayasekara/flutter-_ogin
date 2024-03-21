import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/register.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'login': (context) => const Login(),
        'register': (context) => const MyRegister(),
      },
      home: Scaffold(
        appBar: AppBar(),
        body: Login(),
      ),
    ),
  );
}
