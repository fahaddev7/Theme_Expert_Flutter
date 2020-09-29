import 'dart:ffi';

import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  @override
  _SampleState createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  Icon cusIcon = Icon(Icons.search);
  Widget cusp = Text("ThemeXpert");

  String value = "";
  List<DropdownMenuItem> menuitems = List();

  final web = {
    "1": "web",
    "2": "web",
    "3": "web",
  };
  final mobile = {
    "1": "web",
    "2": "web",
    "3": "web",
  };
  final desktop = {
    "1": "web",
    "2": "web",
    "3": "web",
  };
  void populateweb(){
    for(String key in web.keys){
      menuitems.add(DropdownMenuItem<String>(
        value: web[key],
        child: Center(
          child: Text(web[key]),
        )));
    }

  }
  void valuechanged(_value) {
    if(value == "web"){
      populateweb();
    }
    setState(() {
      value = _value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cusp,
        titleSpacing: 0.0,
        actions: <Widget>[
          IconButton(
              icon: cusIcon,
              onPressed: () {
                setState(() {
                  if (cusIcon.icon == Icons.search) {
                    this.cusIcon = Icon(Icons.cancel);
                    this.cusp = TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      textInputAction: TextInputAction.go,
                    );
                  } else {
                    this.cusIcon = Icon(Icons.search);
                    cusp = Text("ThemeXpert");
                  }
                });
              }),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      floatingActionButton: IconButton(
        icon: Icon(Icons.message),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red[300],
        elevation: 50.0,
        child: Row(
          children: <Widget>[
            Expanded(
              child: SizedBox(
                height: 48.0,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  splashColor: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        size: 20.0,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 48.0,
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.call,
                        size: 20.0,
                      ),
                      Text(
                        "Calls",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 48.0,
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        size: 20.0,
                      ),
                      Text(
                        "My Profile",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 48.0,
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.folder_open,
                        size: 20.0,
                      ),
                      Text(
                        "Files",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: DropdownButton(
              items: [
                DropdownMenuItem(
                    value: "web",
                    child: Center(
                      child: Text("web"),
                    )),
                DropdownMenuItem(
                    value: "mobile",
                    child: Center(
                      child: Text("mobile"),
                    )),
                DropdownMenuItem(
                    value: "desktop",
                    child: Center(
                      child: Text("desktop"),
                    )),
              ],
              hint: Text("select field"),
              onChanged: (_value) => valuechanged(_value),
            ),
          ),
          DropdownButton(
            items: menuitems,
            disabledHint: Text("select field first"),
            onChanged: null,
          ),
          Text("$value"),

          MaterialButton(onPressed: ()=> print("hi"),
          child: Text("Click"),)
        ],
      ),
    );
  }
}
