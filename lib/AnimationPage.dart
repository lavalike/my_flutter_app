import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new AnimationPageState();
}

class AnimationPageState extends State<AnimationPage>
    with TickerProviderStateMixin {
  AnimationController fadeController;
  CurvedAnimation fadeCurve;

  @override
  void initState() {
    super.initState();
    fadeController = new AnimationController(
        duration: new Duration(milliseconds: 2000), vsync: this);
    fadeCurve =
        new CurvedAnimation(parent: fadeController, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Animation"),
      ),
      body: new Column(
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new FadeTransition(
                opacity: fadeCurve,
                child: new FlutterLogo(
                  size: 100.0,
                ),
              ),
              new RaisedButton(
                onPressed: () {
                  fadeController.forward();
                },
                child: new Text("Fade"),
              )
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new RotationTransition(
                turns: fadeCurve,
                child: new FlutterLogo(
                  size: 100.0,
                ),
              ),
              new RaisedButton(
                onPressed: () {
                  if (fadeController.isCompleted) {
                    fadeController.reverse();
                  } else {
                    fadeController.forward();
                  }
                },
                child: new Text("Rotation"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
