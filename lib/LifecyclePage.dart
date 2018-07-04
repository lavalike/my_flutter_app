import 'package:flutter/material.dart';

class LifecyclePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new LifecycleState();
}

class LifecycleState extends State<LifecyclePage> with WidgetsBindingObserver {
  AppLifecycleState _lastLifecycleState;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      _lastLifecycleState = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Lifecycle"),
      ),
      body: new Center(
        child: buildBody(),
      ),
    );
  }

  Widget buildBody() {
    if (_lastLifecycleState == null) {
      return new Text("This widget has not observed any lifecycle changes.");
    } else {
      return new Text(
          "The most recent lifecycle state this widget observed was: $_lastLifecycleState.");
    }
  }
}
