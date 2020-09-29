

import 'dart:io';

import 'package:flutter/material.dart';


class Welcome extends StatefulWidget  {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  void checkconn() async{
    try{
      final result= await InternetAddress.lookup('google.com');
      if(result.isNotEmpty && result[0].rawAddress.isNotEmpty)
      {
        print("connected");
      }
    }on SocketException catch(_){
      print("not");
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return WillPopScope(child: Scaffold(
      backgroundColor: Colors.black,
        body: Stack(
      fit: StackFit.expand,
      
      children: <Widget>[
        
        // Image.asset(
        //   "assets/images/1.jpg",
        //   color: Colors.black87,
        //   colorBlendMode: BlendMode.darken,
        // ),
        Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Welcome to ThemeXpert \n           [Sample]",
                  style: TextStyle(
                    fontFamily: "Cursive",
                    fontSize: 30.0,color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(padding: EdgeInsets.all(25.0)),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sample');
                  },splashColor: Colors.blue,
                  color: Colors.redAccent,
                  height: 50.0,
                  minWidth: 150.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text("Sample Layout",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                MaterialButton(
                  
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },splashColor: Colors.blue,
                  color: Colors.redAccent,
                  height: 50.0,
                  minWidth: 150.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text("Sign In",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                MaterialButton(
                  
                  onPressed: () {
                    Navigator.pushNamed(context, '/new');
                  },splashColor: Colors.blue,
                  color: Colors.redAccent,
                  height: 50.0,
                  minWidth: 150.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text("Tab Bar",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                MaterialButton(
                  
                  onPressed: checkconn,
                   splashColor: Colors.blue,
                  color: Colors.redAccent,
                  height: 50.0,
                  minWidth: 150.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text("Check Connection",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
        
        ), 
        onWillPop: (){
          return showDialog(context: context,builder: (context)=> AlertDialog(
            title: Text("Warning"),
            content: Text("Do you want to close this application"),
            actions: <Widget>[
              FlatButton(onPressed: (){
                Navigator.of(context).pop(true);
              }, child: Text("Yes")),
              FlatButton(onPressed: (){
                Navigator.of(context).pop(false);
              }, child: Text("No")),
              
            ],
          ));
        }
        );
  }
}
