import 'dart:async';

import 'welcome.dart';
import 'package:flutter/material.dart';
import 'sample.dart';
import 'login.dart';
import 'new.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/sample': (context) => Sample(),
        '/welcome': (context) => Welcome(),
        '/login': (context) => Login(),
        '/new': (context) => Newpage(),
      },
      debugShowCheckedModeBanner: false,
      title: "Sample",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), completed);
  }

  void completed() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => Welcome(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  "assets/images/banner.png",
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: CircularProgressIndicator(
              backgroundColor: Colors.blue[800],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0,right: 15.0),
            child: Text(
              "   from\n  FAHAD",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w700,
                  fontFamily: "segoeUI",
                  letterSpacing: 5),
            ),
          ),
        ],
      ),
    );
  }
}
