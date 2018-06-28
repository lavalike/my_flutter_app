import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/ComponentPage.dart';
import 'package:my_flutter_app/DetailPage.dart';
import 'package:my_flutter_app/ListViewPage.dart';
import 'package:my_flutter_app/RandomWords.dart';
import 'package:my_flutter_app/SecondPage.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  final gridItemColor = Colors.teal;
  final gridItemTextColor = const TextStyle(color: Colors.white);
  final gridItemShape = const Border(
      top: BorderSide.none,
      left: BorderSide.none,
      right: BorderSide.none,
      bottom: BorderSide.none);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Flutter",
        ),
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return new GridView.count(
      crossAxisCount: 3,
      padding: new EdgeInsets.all(4.0),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: <Widget>[
        new RaisedButton(
          shape: gridItemShape,
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ComponentPage()));
          },
          child: new Text(
            "Component",
            style: gridItemTextColor,
          ),
          color: gridItemColor,
        ),
        new RaisedButton(
          shape: gridItemShape,
          onPressed: () {
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new DetailPage()));
          },
          child: new Text(
            "详情页",
            style: gridItemTextColor,
          ),
          color: gridItemColor,
        ),
        new RaisedButton(
          shape: gridItemShape,
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ListViewPage()));
          },
          child: new Text(
            "ListView",
            style: gridItemTextColor,
          ),
          color: gridItemColor,
        ),
        new RaisedButton(
          shape: gridItemShape,
          onPressed: () {
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new SecondPage()));
          },
          child: new Text(
            "页面跳转",
            style: gridItemTextColor,
          ),
          color: gridItemColor,
        ),
        new RaisedButton(
          shape: gridItemShape,
          onPressed: () {
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new RandomWords()));
          },
          child: new Text(
            "Random Words",
            style: gridItemTextColor,
          ),
          color: gridItemColor,
        ),
      ],
    );
  }
}
