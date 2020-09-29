import 'package:flutter/material.dart';

class Newpage extends StatefulWidget {
  @override
  _NewpageState createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> with TickerProviderStateMixin{

  TabController tab;
@override
  void initState(){
    tab = TabController(length: 2, vsync: this,);super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBar Sample"),
        bottom: TabBar(
          labelPadding: EdgeInsets.only(bottom: 10.0),
          labelStyle: TextStyle(fontWeight: FontWeight.w700),
          tabs: <Widget>[
            Text("Sample1"),
            Text("Sample2"),
          ],
          controller: tab,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Sample Data"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Sample Data2"),
          ),
        ],
        controller: tab,
      ),
    );
  }
}

