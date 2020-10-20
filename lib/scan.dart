import 'dart:io';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'GeneratorPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: new MaterialApp(
        theme: ThemeData(fontFamily: "Nunito"),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: Scanapp(),
          ),
        ),
      ),
    );
  }
}

class Scanapp extends StatefulWidget {
  String name;
  String place;
  int age;
  int mob;

  Scanapp({this.name, this.place, this.age, this.mob});
  @override
  _ScanappState createState() => _ScanappState(name, place, age, mob);
}

class _ScanappState extends State<Scanapp> {
  String name;
  String place;
  int age;
  int mob;
  var arr = new List(4);

  _ScanappState(this.name, this.place, this.age, this.mob);
  double windowHeight;
  double windowWidth;
  @override
  Widget build(BuildContext context) {
    arr[0] = name;
    arr[1] = place;
    arr[2] = age;
    arr[3] = mob;
    windowHeight = MediaQuery.of(context).size.height;
    windowWidth = MediaQuery.of(context).size.width;
    return Material(
      type: MaterialType.transparency,
      child: AnimatedContainer(
        curve: Curves.fastLinearToSlowEaseIn,
        duration: Duration(seconds: 1),
        color: Color(0xFF011028),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: windowHeight / 11),
              child: Container(
                child: Image.asset(
                  "assets/images/logo2.png",
                  scale: 3,
                ),
              ),
            ),
            Container(
              child: Text(
                "Uwent",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textScaleFactor: 1.9,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: windowHeight / 15),
              child: Center(
                child: Container(
                  height: windowHeight / 3,
                  width: windowWidth / 1.5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: QrImage(size: 50, data: arr[0]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
