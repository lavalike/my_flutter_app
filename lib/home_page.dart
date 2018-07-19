import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/animation_page.dart';
import 'package:my_flutter_app/call_android_page.dart';
import 'package:my_flutter_app/component_page.dart';
import 'package:my_flutter_app/detail_page.dart';
import 'package:my_flutter_app/dio_page.dart';
import 'package:my_flutter_app/fonts_page.dart';
import 'package:my_flutter_app/http_listview_page.dart';
import 'package:my_flutter_app/http_page.dart';
import 'package:my_flutter_app/intrinsic_page.dart';
import 'package:my_flutter_app/lifecycle_page.dart';
import 'package:my_flutter_app/listview_page.dart';
import 'package:my_flutter_app/random_words.dart';
import 'package:my_flutter_app/route_page.dart';
import 'package:my_flutter_app/second_page.dart';
import 'package:my_flutter_app/sharedpreference_page.dart';
import 'package:my_flutter_app/websockets_page.dart';

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
        title: new Row(
          children: <Widget>[
            new Icon(Icons.android),
            new Padding(
              padding: new EdgeInsets.only(left: 10.0),
              child: new Text(
                "Flutter",
              ),
            ),
          ],
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
                builder: (context) => new IntrinsicPage()));
          },
          child: new Text(
            "Instrinsic",
            style: gridItemTextColor,
          ),
          color: gridItemColor,
        ),
        new RaisedButton(
          shape: gridItemShape,
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new CallAndroidPage()));
          },
          child: new Text(
            "调用Android",
            style: gridItemTextColor,
          ),
          color: gridItemColor,
        ),
        new RaisedButton(
          shape: gridItemShape,
          onPressed: () {
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new FontsPage()));
          },
          child: new Text(
            "Fonts",
            style: gridItemTextColor,
          ),
          color: gridItemColor,
        ),
        new RaisedButton(
          shape: gridItemShape,
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new SharedPreferencePage()));
          },
          child: new Text(
            "SharedPreference",
            style: gridItemTextColor,
          ),
          color: gridItemColor,
        ),
        new RaisedButton(
          shape: gridItemShape,
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new LifecyclePage()));
          },
          child: new Text(
            "Lifecycle",
            style: gridItemTextColor,
          ),
          color: gridItemColor,
        ),
        new RaisedButton(
          shape: gridItemShape,
          onPressed: () {
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new RoutePage()));
          },
          child: new Text(
            "路由Routes",
            style: gridItemTextColor,
          ),
          color: gridItemColor,
        ),
        new RaisedButton(
          shape: gridItemShape,
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new AnimationPage()));
          },
          child: new Text(
            "Animation",
            style: gridItemTextColor,
          ),
          color: gridItemColor,
        ),
        new RaisedButton(
          shape: gridItemShape,
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new WebSocketsPage()));
          },
          child: new Text(
            "WebSockets",
            style: gridItemTextColor,
          ),
          color: gridItemColor,
        ),
        new RaisedButton(
          shape: gridItemShape,
          onPressed: () {
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new DioPage()));
          },
          child: new Text(
            "dio",
            style: gridItemTextColor,
          ),
          color: gridItemColor,
        ),
        new RaisedButton(
          shape: gridItemShape,
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new HttpListViewPage()));
          },
          child: new Text(
            "http->List",
            style: gridItemTextColor,
          ),
          color: gridItemColor,
        ),
        new RaisedButton(
          shape: gridItemShape,
          onPressed: () {
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new HttpPage()));
          },
          child: new Text(
            "http->Future",
            style: gridItemTextColor,
          ),
          color: gridItemColor,
        ),
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
