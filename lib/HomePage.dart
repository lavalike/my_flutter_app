import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/SecondPage.dart';
import 'package:my_flutter_app/randomwords/RandomWords.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  final buttonTextColor = const TextStyle(color: Colors.white);
  final buttonPadding = const EdgeInsets.only(left: 10.0, right: 10.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(
            "Flutter",
          ),
        ),
        body: new Column(
          children: <Widget>[
            new RaisedButton(
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new SecondPage()));
              },
              child: new Text(
                "跳转第二页面",
                style: buttonTextColor,
              ),
              color: Colors.green,
              padding: buttonPadding,
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new RandomWords()));
              },
              child: new Text(
                "Random Words",
                style: buttonTextColor,
              ),
              color: Colors.green,
              padding: buttonPadding,
            ),
          ],
        ));
  }
}
