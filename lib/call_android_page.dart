import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CallAndroidPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new CallAndroidState();
}

class CallAndroidState extends State<CallAndroidPage> {
  String _batteryLevel = "Unknown battery level";
  static const platform = const MethodChannel("com.flutter.app/battery");

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("调用Android"),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Text(_batteryLevel),
            new RaisedButton(
              onPressed: _getBatteryLevel,
              child: new Text("获取电量"),
            )
          ],
        ),
      ),
    );
  }

  void _getBatteryLevel() async {
    String batteryLevel;
    try {
      int level = await platform.invokeMethod("getBatteryLevel");
      batteryLevel = "current battery level is $level% ";
    } on PlatformException catch (e) {
      batteryLevel = "Wrong battery level --> ${e.message}";
    }
    setState(() {
      _batteryLevel = batteryLevel;
    });
  }
}
