import 'package:flutter/material.dart';

class RoutePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new RoutePageState();
}

class RoutePageState extends State<RoutePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Route"),
      ),
      body: new Column(
        children: <Widget>[
          new RaisedButton(
            padding: new EdgeInsets.all(10.0),
            onPressed: () {
              Navigator.of(context).pushNamed("/a");
            },
            child: new Text("/a"),
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/b");
            },
            child: new Text("/b"),
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/c");
            },
            child: new Text("/c"),
          ),
        ],
      ),
    );
  }
}

class RouteResultPage extends StatelessWidget {
  final String title;

  RouteResultPage(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Text("Route from RoutePage with params '$title'"),
      ),
    );
  }
}
