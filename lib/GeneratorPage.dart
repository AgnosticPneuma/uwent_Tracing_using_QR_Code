import 'dart:io';
import 'package:flutter/material.dart';

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
          child: genPage(),
        ),
      ),
    );
  }
}

class genPage extends StatefulWidget {
  @override
  _genPageState createState() => _genPageState();
}

class _genPageState extends State<genPage> {
  String _name;
  String _place;
  int _age;
  int _mobile;
  String _vehname;
  String _vehtype;
  String _vehnumber;
  String _ownername;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildname() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Color(0xFFF3F5F7)),
      width: windowWidth / 2.5,
      height: windowHeight / 30,
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        validator: (String value) {
          return "Please type your name";
        },
        onSaved: (String value) {
          _name = value;
        },
      ),
    );
  }

  Widget _buildvehname() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Color(0xFFF3F5F7)),
      width: windowWidth / 2.5,
      height: windowHeight / 30,
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        validator: (String value) {
          return "Please type your vehicle name";
        },
        onSaved: (String value) {
          _vehname = value;
        },
      ),
    );
  }

  Widget _buildvehtype() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Color(0xFFF3F5F7)),
      width: windowWidth / 2.5,
      height: windowHeight / 30,
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        validator: (String value) {
          return "Please type your vehicle type";
        },
        onSaved: (String value) {
          _vehtype = value;
        },
      ),
    );
  }

  Widget _buildvehnumber() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Color(0xFFF3F5F7)),
      width: windowWidth / 2.5,
      height: windowHeight / 30,
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        validator: (String value) {
          return "Please type your Vehicle Number";
        },
        onSaved: (String value) {
          _vehnumber = value;
        },
      ),
    );
  }

  Widget _buildage() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Color(0xFFF3F5F7)),
      width: windowWidth / 2.5,
      height: windowHeight / 30,
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        validator: (String value) {
          return "Please type your Age";
        },
        /*onSaved: (String value) {
          _age = value;
        },*/
      ),
    );
  }

  Widget _buildplace() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Color(0xFFF3F5F7)),
      width: windowWidth / 2.5,
      height: windowHeight / 30,
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        validator: (String value) {
          return "Please type Place";
        },
        onSaved: (String value) {
          _place = value;
        },
      ),
    );
  }

  Widget _buildmobile() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Color(0xFFF3F5F7)),
      width: windowWidth / 2.5,
      height: windowHeight / 30,
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        validator: (String value) {
          return "Please type your Number";
        },
        /* onSaved: (String value) {
          _mobile = value;
        },*/
      ),
    );
  }

  int _pageState = 0;
  double windowWidth = 0;
  double windowHeight = 0;

  double _yoffset = 0;
  double _xoffset1 = 0;
  double _xoffset2 = 0;
  double _xoffset3 = 0;

  @override
  Widget build(BuildContext context) {
    windowHeight = MediaQuery.of(context).size.height;
    windowWidth = MediaQuery.of(context).size.width;

    switch (_pageState) {
      case 0:
        _yoffset = windowHeight;
        _xoffset1 = windowWidth;
        _xoffset2 = windowWidth;
        _xoffset3 = windowWidth;
        break;
      case 1:
        _yoffset = windowHeight / 2.8;
        _xoffset1 = windowWidth;
        _xoffset2 = windowWidth;
        _xoffset3 = windowWidth;
        break;
      case 2:
        _yoffset = windowHeight;
        _xoffset1 = windowWidth / 7;
        break;
      case 3:
        _yoffset = windowHeight;
        _xoffset2 = windowWidth / 7;
        break;
      case 4:
        _yoffset = windowHeight;
        _xoffset3 = windowHeight / 7;
    }
    return SingleChildScrollView(
      child: Stack(children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              _pageState = 0;
            });
          },
          child: Container(
            color: Color(0xFF011028),
            height: windowHeight,
            width: windowWidth,
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
                  padding: EdgeInsets.only(top: windowHeight / 13),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _pageState = 1;
                      });
                    },
                    child: Container(
                      height: windowHeight / 2.5,
                      width: windowWidth / 1.5,
                      decoration: BoxDecoration(
                          color: Color(0xFFf7f7f7),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 58.0),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 40,
                                child: Text(
                                  "Generate\n",
                                  style: TextStyle(
                                      fontFamily: "SecularOne",
                                      fontWeight: FontWeight.w900,
                                      fontSize: 35),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 48.0),
                                child: Text(
                                  "QR Code!",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 28.0, top: 10),
                                child: Image.asset(
                                  "assets/images/qrgen.jpg",
                                  height: windowWidth / 2.5,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        AnimatedContainer(
          width: windowWidth,
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
                padding: EdgeInsets.only(top: 18.0),
                child: Container(
                  child: Image.asset(
                    "assets/images/qrgenpop.png",
                    height: 230,
                    width: windowWidth,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 18),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _pageState = 2;
                    });
                  },
                  child: Container(
                    height: windowWidth / 7.5,
                    decoration: BoxDecoration(color: Color(0xFF011028)),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: windowWidth / 2),
                          child: Text(
                            "For Individual    ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Image.asset(
                          "assets/images/per.png",
                          scale: 4,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _pageState = 3;
                    });
                  },
                  child: Container(
                    height: windowWidth / 7.5,
                    decoration: BoxDecoration(color: Color(0xFF011028)),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding:
                              EdgeInsets.only(left: windowWidth / 2, right: 10),
                          child: Text(
                            "For Vehicles    ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Image.asset(
                          "assets/images/carcanva.png",
                          scale: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 41.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _pageState = 4;
                    });
                  },
                  child: Container(
                    height: windowWidth / 7.5,
                    decoration: BoxDecoration(color: Color(0xFF011028)),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: windowWidth / 2),
                          child: Text(
                            "For Buildings    ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Image.asset(
                          "assets/images/buildcanva.png",
                          scale: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        AnimatedContainer(
          curve: Curves.fastOutSlowIn,
          duration: Duration(milliseconds: 300),
          height: windowHeight / 2.5,
          width: windowWidth,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
          ),
          transform:
              Matrix4.translationValues(_xoffset1, windowHeight / 2.34, 1),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 48.0),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: windowWidth / 5),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 27.0),
                              child: Text(
                                "Name",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                    color: Color(0xFF011028)),
                              ),
                            ),
                            Form(
                              child: _buildname(),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 47.0),
                              child: Text(
                                "Age",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                    color: Color(0xFF011028)),
                              ),
                            ),
                            Form(
                              child: _buildage(),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 32.0),
                              child: Text(
                                "Place",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                    color: Color(0xFF011028)),
                              ),
                            ),
                            Form(
                              child: _buildplace(),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 6.0),
                              child: Text(
                                "Number",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                    color: Color(0xFF011028)),
                              ),
                            ),
                            Form(
                              child: _buildmobile(),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: windowWidth / 3,
                  top: 18,
                ),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _pageState = 1;
                        });
                      },
                      child: Container(
                        child: Center(
                          child: Text("Not This!",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ),
                        width: windowWidth / 4,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF011028)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Center(
                            child: Text(
                              ">",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF011028),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        //
        //================================
        //Vehicle Details Starts here
        //================================
        //
        AnimatedContainer(
          curve: Curves.fastOutSlowIn,
          duration: Duration(milliseconds: 300),
          height: windowHeight / 2.5,
          width: windowWidth,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
          ),
          transform:
              Matrix4.translationValues(_xoffset2, windowHeight / 2.34, 1),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 48.0, left: windowWidth / 15),
                child: Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 35.0),
                              child: Text(
                                "Vehicle Name",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                    color: Color(0xFF011028)),
                              ),
                            ),
                            Form(
                              child: _buildvehname(),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 47.0),
                              child: Text(
                                "Vehicle Type",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                    color: Color(0xFF011028)),
                              ),
                            ),
                            Form(
                              child: _buildvehtype(),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 58.0),
                              child: Text(
                                "Vehicle No.",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                    color: Color(0xFF011028)),
                              ),
                            ),
                            Form(
                              child: _buildvehnumber(),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 26.0),
                              child: Text(
                                "Owner's Name",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                    color: Color(0xFF011028)),
                              ),
                            ),
                            Form(
                              child: _buildname(),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 6.0),
                              child: Text(
                                "Owner's Number",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                    color: Color(0xFF011028)),
                              ),
                            ),
                            Form(
                              child: _buildmobile(),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: windowWidth / 3,
                  top: 18,
                ),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _pageState = 1;
                        });
                      },
                      child: Container(
                        child: Center(
                          child: Text("Not This!",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ),
                        width: windowWidth / 4,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF011028)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Center(
                            child: Text(
                              ">",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF011028),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        //==========================================
        // For Building Code Starts Here
        //==========================================

        AnimatedContainer(
          curve: Curves.fastOutSlowIn,
          duration: Duration(milliseconds: 300),
          height: windowHeight / 2.5,
          width: windowWidth,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
          ),
          transform:
              Matrix4.translationValues(_xoffset3, windowHeight / 2.34, 1),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 48.0, left: windowWidth / 15),
                child: Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 35.0),
                              child: Text(
                                "Building Name",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                    color: Color(0xFF011028)),
                              ),
                            ),
                            Form(
                              child: _buildvehname(),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 47.0),
                              child: Text(
                                "Building Type",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                    color: Color(0xFF011028)),
                              ),
                            ),
                            Form(
                              child: _buildvehtype(),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 58.0),
                              child: Text(
                                "Location",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                    color: Color(0xFF011028)),
                              ),
                            ),
                            Form(
                              child: _buildplace(),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 26.0),
                              child: Text(
                                "Owner's Name",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                    color: Color(0xFF011028)),
                              ),
                            ),
                            Form(
                              child: _buildname(),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 6.0),
                              child: Text(
                                "Owner's Number",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                    color: Color(0xFF011028)),
                              ),
                            ),
                            Form(
                              child: _buildmobile(),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: windowWidth / 3,
                  top: 18,
                ),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _pageState = 1;
                        });
                      },
                      child: Container(
                        child: Center(
                          child: Text("Not This!",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ),
                        width: windowWidth / 4,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF011028)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Center(
                            child: Text(
                              ">",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF011028),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
