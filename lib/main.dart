import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int LeftDiceNumber = 1;
  int RightDiceNumber = 1;
  void TossAppLeft() {
    setState(() {
      LeftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  void TossAppRight() {
    setState(() {
      RightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Center(child: Text("Toss APP")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    TossAppRight();
                  },
                  child: Container(
                      width: 100,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "images/dice$LeftDiceNumber.jpeg")))),
                ),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    TossAppLeft();
                  },
                  child: Container(
                      width: 100,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "images/dice$RightDiceNumber.jpeg")))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
