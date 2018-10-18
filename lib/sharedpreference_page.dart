//import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//
//class SharedPreferencePage extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() => new SharedPreferenceState();
//}
//
//class SharedPreferenceState extends State<SharedPreferencePage> {
//  int _value = 0;
//
//  @override
//  void initState() {
//    super.initState();
//    getValue();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("SharedPreference"),
//      ),
//      body: new Center(
//        child: new Text("the value from SharedPreference is $_value."),
//      ),
//      floatingActionButton: new FloatingActionButton(
//        onPressed: increaseValue,
//        tooltip: "increase value",
//        child: new Icon(Icons.add),
//      ),
//    );
//  }
//
//  void increaseValue() async {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    int count = (prefs.getInt("count") ?? 0) + 1;
//    prefs.setInt("count", count);
//    getValue();
//  }
//
//  void getValue() async {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    setState(() {
//      _value = prefs.getInt("count") ?? 0;
//    });
//  }
//}
