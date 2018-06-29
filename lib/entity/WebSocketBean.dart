class WebSocketBean {
  final int type;
  final String message;

  WebSocketBean(this.type, this.message);
}

class MessageType {
  static const int TYPE_LEFT = 0;
  static const int TYPE_RIGHT = 1;
}
