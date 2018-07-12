import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new AnimationPageState();
}

class AnimationPageState extends State<AnimationPage>
    with TickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation curve;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
        duration: new Duration(milliseconds: 2000), vsync: this);
    curve = new CurvedAnimation(parent: controller, curve: Curves.easeIn);
    animation = new Tween(begin: 10.0, end: 100.0).animate(controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (AnimationStatus.completed == status) {
          controller.reverse();
        } else if (AnimationStatus.dismissed == status) {
          controller.forward();
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Animation"),
      ),
      body: new ListView(
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new FadeTransition(
                opacity: curve,
                child: new FlutterLogo(
                  size: 100.0,
                ),
              ),
              new RaisedButton(
                onPressed: () {
                  if (controller.isCompleted) {
                    controller.reverse();
                  } else {
                    controller.forward();
                  }
                },
                child: new Text("Fade"),
              )
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new RotationTransition(
                turns: curve,
                child: new FlutterLogo(
                  size: 100.0,
                ),
              ),
              new RaisedButton(
                onPressed: () {
                  if (controller.isCompleted) {
                    controller.reverse();
                  } else {
                    controller.forward();
                  }
                },
                child: new Text("Rotation"),
              )
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new FlutterLogo(
                size: animation.value,
              ),
              new RaisedButton(
                onPressed: () {
                  if (controller.isCompleted) {
                    controller.reverse();
                  } else {
                    controller.forward();
                  }
                },
                child: new Text("Tween"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
