import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_flutter_app/entity/Post.dart';

class HttpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HttpPageState();
}

class HttpPageState extends State<HttpPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("http"),
      ),
      body: new Center(
        child: new FutureBuilder<Post>(
            future: fetchPost(),
            builder: (BuildContext context, AsyncSnapshot<Post> snapshot) {
              if (snapshot.hasData) {
                return new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      snapshot.data.title,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 10.0),
                      child: new Text(
                        snapshot.data.body,
                      ),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return new Text("${snapshot.error}");
              }
              return new Text("No Data.");
            }),
      ),
    );
  }

  Future<Post> fetchPost() async {
    final response =
        await http.get("https://jsonplaceholder.typicode.com/posts/1");
    final _json = json.decode(response.body);
    return new Post.fromJson(_json);
  }
}
