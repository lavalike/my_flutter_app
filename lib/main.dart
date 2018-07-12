import 'package:flutter/material.dart';
import 'package:my_flutter_app/home_page.dart';
import 'package:my_flutter_app/route_page.dart';

void main() => runApp(new Application());

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Welcome to Flutter",
      theme: new ThemeData(
        primaryColor: Colors.teal,
      ),
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        "/a": (BuildContext context) => new RouteResultPage("Page A"),
        "/b": (BuildContext context) => new RouteResultPage("Page B"),
        "/c": (BuildContext context) => new RouteResultPage("Page C"),
      },
    );
  }
}
