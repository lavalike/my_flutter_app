import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpListViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HttpListViewState();
}

class HttpListViewState extends State<HttpListViewPage> {
  List widgets = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Http列表"),
      ),
      body: buildBody(),
    );
  }

  Widget buildRow(int index) {
    return new Container(
      color: Colors.teal,
      margin: const EdgeInsets.only(bottom: 1.0),
      padding: const EdgeInsets.all(10.0),
      child: new Text(
        "${widgets[index]["title"]}",
        style: new TextStyle(color: Colors.white, fontSize: 18.0),
      ),
    );
  }

  void loadData() async {
    String dataUrl = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(dataUrl);
    setState(() {
      widgets = json.decode(response.body);
    });
  }

  Widget buildBody() {
    if (widgets.length == 0) {
      return new Center(
        child: new CircularProgressIndicator(
          strokeWidth: 1.5,
        ),
      );
    } else {
      return new ListView.builder(
          itemCount: widgets.length,
          itemBuilder: (BuildContext context, int index) {
            return buildRow(index);
          });
    }
  }
}
