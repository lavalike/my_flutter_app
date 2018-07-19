import 'package:flutter/material.dart';

class IntrinsicPage extends StatefulWidget {
  @override
  _IntrinsicPageState createState() => _IntrinsicPageState();
}

class _IntrinsicPageState extends State<IntrinsicPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Intrinsic"),
      ),
      body: new Column(
        children: <Widget>[
          _buildIntrinsicHeight(),
          new Expanded(
            flex: 1,
            child: _buildIntrinsicWidth(),
          ),
        ],
      ),
    );
  }

  Widget _buildIntrinsicWidth() {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Container(
          color: Colors.blue,
          height: 50.0,
        ),
        new Container(
          color: Colors.red,
          width: 50.0,
          height: 50.0,
        ),
        new Container(
          color: Colors.pink,
          width: 150.0,
          height: 50.0,
        ),
        new Container(
          color: Colors.green,
          width: 230.0,
          height: 50.0,
        ),
        new Container(
          color: Colors.yellow,
          height: 50.0,
        ),
      ],
    );
  }

  Widget _buildIntrinsicHeight() {
    return new IntrinsicHeight(
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Container(
            color: Colors.blue,
            width: 50.0,
          ),
          new Container(
            color: Colors.red,
            width: 50.0,
            height: 50.0,
          ),
          new Container(
            color: Colors.red,
            width: 50.0,
            height: 100.0,
          ),
          new Container(
            color: Colors.yellow,
            width: 50.0,
          ),
        ],
      ),
    );
  }
}
