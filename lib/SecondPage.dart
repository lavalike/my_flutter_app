import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new SecondPageState();
}

class SecondPageState extends State<SecondPage> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Second Page"),
      ),
      body: new Center(
        child: getChild(),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          setState(() {
            toggle = !toggle;
          });
        },
        child: new Icon(Icons.update),
      ),
    );
  }

  getChild() {
    if (toggle) {
      return new MaterialButton(
        onPressed: () {},
        child: new Text("开"),
        color: Colors.red,
      );
    } else {
      return new MaterialButton(
        onPressed: () {},
        child: new Text("关"),
        color: Colors.green,
      );
    }
  }
}
