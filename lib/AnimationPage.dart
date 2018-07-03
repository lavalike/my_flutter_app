import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new AnimationPageState();
}

class AnimationPageState extends State<AnimationPage>
    with TickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
        duration: new Duration(milliseconds: 2000), vsync: this);
    curve = new CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Animation"),
      ),
      body: new Center(
        child: new Container(
          child: new FadeTransition(
            opacity: curve,
            child: new FlutterLogo(
              size: 100.0,
            ),
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.brush),
          onPressed: () {
            controller.forward();
          }),
    );
  }
}
