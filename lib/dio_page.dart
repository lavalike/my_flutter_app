import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DioPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new DioState();
}

class DioState extends State<DioPage> {
  String _ipAddress = "click to obtain ip address";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Dio"),
      ),
      body: new ListView(
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Text(_ipAddress),
              new RaisedButton(
                onPressed: getIPAddressByDio,
                child: new Text("获取IP(通过Dio)"),
              ),
              new RaisedButton(
                onPressed: getIPAddressByHttp,
                child: new Text("获取IP(通过http)"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void getIPAddressByDio() async {
    String result = "";
    //1. 默认
    Options options = new Options(responseType: ResponseType.JSON);
    //2. 设置为String
//    Options options = new Options(responseType: ResponseType.PLAIN);
    Dio dio = new Dio(options);
    Response response = await dio.get("https://httpbin.org/ip");
    if (response.statusCode == HttpStatus.OK) {
      try {
        //1. 默认返回JSON对象
        result = "current ip is ${response.data['origin']}";
        //2. 如果是字符串形式，需要转换
//        Map map = json.decode(response.data.toString());
//        result = "current ip is ${map['origin']}";
      } catch (e) {
        result = "error occured -> $e";
      }
    } else {
      result = "error occured -> ${response.statusCode}";
    }
    setState(() {
      _ipAddress = "dio : " + result;
    });
  }

  void getIPAddressByHttp() async {
    String result = "";
    http.Response response = await http.get("https://httpbin.org/ip");
    print(response.body);

    if (response.statusCode == HttpStatus.OK) {
      try {
        var data = json.decode(response.body);
        result = "current ip is ${data['origin']}";
      } catch (e) {
        result = "error occured -> $e";
      }
    } else {
      result = "error occured -> ${response.statusCode}";
    }
    setState(() {
      _ipAddress = "http : " + result;
    });
  }
}
