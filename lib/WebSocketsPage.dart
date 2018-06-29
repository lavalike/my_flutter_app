import 'package:flutter/material.dart';
import 'package:my_flutter_app/entity/WebSocketBean.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new WebSocketsPageState();
}

class WebSocketsPageState extends State<WebSocketsPage> {
  WebSocketChannel channel =
      new IOWebSocketChannel.connect("ws://echo.websocket.org");

  TextEditingController _controller = new TextEditingController();
  List<WebSocketBean> list = List();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WebSockets"),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          children: <Widget>[
            new Form(
                child: new TextFormField(
              controller: _controller,
              decoration: new InputDecoration(labelText: "Send a message"),
            )),
            new StreamBuilder(
                stream: channel.stream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    list.add(new WebSocketBean(
                        MessageType.TYPE_LEFT, snapshot.data));
                  }
                  return new Text("${snapshot.data}");
                }),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _sendMessage,
        child: new Icon(Icons.send),
      ),
    );
  }

  @override
  void dispose() {
    channel.sink.close();
    super.dispose();
  }

  void _sendMessage() {
    var text = _controller.text;
    if (text.isNotEmpty) {
      channel.sink.add(text);
      setState(() {
        list.add(new WebSocketBean(MessageType.TYPE_RIGHT, text));
      });
      _controller.clear();
    }
  }

//  List<Widget> buildRows() {
//    final widgets = list.map((item) {
//      if (item.type == MessageType.TYPE_LEFT) {
//        return new Row(
//          mainAxisAlignment: MainAxisAlignment.start,
//          children: <Widget>[
//            new CircleAvatar(
//              backgroundColor: Colors.blue,
//              child: new Text("LEFT"),
//            ),
//            new Text(item.message),
//          ],
//        );
//      } else {
//        return new Row(
//          mainAxisAlignment: MainAxisAlignment.end,
//          children: <Widget>[
//            new Text(item.message),
//            new CircleAvatar(
//              backgroundColor: Colors.blue,
//              child: new Text("LEFT"),
//            ),
//          ],
//        );
//      }
//    });
//    return ListTile.divideTiles(context: context, tiles: widgets);
////    return widgets;
//  }
}
