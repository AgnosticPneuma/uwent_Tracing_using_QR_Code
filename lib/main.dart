import 'package:flutter/material.dart';
import 'package:uwent/GeneratorPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Nunito"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: FrontPage(),
        ),
      ),
    );
  }
}

class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  int _pageState = 0;
  double windowWidth = 0;
  double windowHeight = 0;

  double _yoffset = 0;
  @override
  Widget build(BuildContext context) {
    windowHeight = MediaQuery.of(context).size.height;
    windowWidth = MediaQuery.of(context).size.width;

    switch (_pageState) {
      case 0:
        _yoffset = windowHeight;
        break;
      case 1:
        _yoffset = 160;
        break;
    }
    return Stack(children: <Widget>[
      Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              height: (windowHeight * 5) / 6,
              decoration: BoxDecoration(
                  color: Color(0xFF011028),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 118.0),
                        child: Text(
                          "Welcome!",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textScaleFactor: 1.7,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      child: Image.asset(
                    "assets/images/logo2.png",
                    height: 300,
                    width: 300,
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(
                        "A-MID Labs",
                        style: TextStyle(color: Color(0xFF817E7E)),
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
                      textScaleFactor: 2.1,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (_pageState != 0) {
                      _pageState = 0;
                    } else
                      _pageState = 1;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF011028),
                      borderRadius: BorderRadius.circular(28.0)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
      AnimatedContainer(
        curve: Curves.fastLinearToSlowEaseIn,
        duration: Duration(milliseconds: 1000),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        transform: Matrix4.translationValues(0, _yoffset, 1),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 78.0, left: 78.0),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: windowHeight / 15),
                  child: Container(
                      child: Image.asset(
                    "assets/images/logo2.png",
                    scale: 5,
                  )),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  "Uwent",
                  style: TextStyle(
                      color: Color(0xFF011028),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  textScaleFactor: 1.7,
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(top: windowHeight / 55),
                child: Image.asset(
                  "assets/images/newtest.png",
                  height: 300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _pageState = 0;
                  });
                },
                child: Container(
                  color: Color(0xFF011028),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 128.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Sign Up with Google    ",
                          style: TextStyle(color: Colors.white),
                        ),
                        Image.asset(
                          "assets/images/googlenew.jpg",
                          scale: 4,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    ]);
  }
}
