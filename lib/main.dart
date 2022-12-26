import 'package:flutter/material.dart';
import 'package:untitled1/home.dart';
import 'package:untitled1/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Contact',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

