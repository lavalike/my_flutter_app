import 'package:flutter/material.dart';
import 'package:my_flutter_app/HomePage.dart';

void main() => runApp(new Application());

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Welcome to Flutter",
      theme: new ThemeData(
        primaryColor: Colors.teal,
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
    );
  }
}
