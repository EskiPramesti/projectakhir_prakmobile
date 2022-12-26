import 'dart:io';
import 'package:flutter/material.dart';
import 'package:untitled1/page_detail_contact.dart';
import 'kelompok.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return Kelompok();
                              }));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Center(
                              child: Column(children: [
                                Icon(
                                  Icons.account_circle_rounded,
                                  size: 70,
                                  color: Colors.greenAccent,
                                ),
                                Text(
                                  "Anggota Kelompok",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ])),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return PageDetailContact();
                              }));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Center(
                              child: Column(children: [
                                Icon(
                                  Icons.add_ic_call_rounded,
                                  size: 70,
                                  color: Colors.greenAccent,
                                ),
                                Text(
                                  "Contact",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ])),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
