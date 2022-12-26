import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled1/home.dart';

class Kelompok extends StatefulWidget {
  const Kelompok({Key? key}) : super(key: key);
  @override
  State<Kelompok> createState() => kelompok();
}

class kelompok extends State<Kelompok> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Data Kelompok",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  "Kelompok 8",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  '124200041 - Eski Nur Pramesti',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '124200074 - Diyah Eka Septiyani',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
