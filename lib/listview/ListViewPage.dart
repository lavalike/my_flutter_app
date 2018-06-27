import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ListViewPageState();
}

class ListViewPageState extends State<ListViewPage> {
  List<String> items = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ListView"),
      ),
      body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return buildListItem(context, index);
          }),
    );
  }

  Widget buildListItem(BuildContext context, int index) {
    return new Column(
      children: <Widget>[
        new Row(children: <Widget>[
          new Expanded(
            flex: 2,
            child: new Column(
              children: <Widget>[
                buildTitle(),
                buildSummary(),
                buildRatings(),
                buildIconList(),
              ],
            ),
          ),
          new Expanded(
            flex: 3,
            child: buildImage(index),
          )
        ]),
        buildDivider(index)
      ],
    );
  }

  Widget buildImage(index) {
    return new Stack(
      alignment: new Alignment(0.0, 0.0),
      children: <Widget>[
        new Image.asset(
          "images/bg.jpg",
          fit: BoxFit.cover,
          width: 230.0,
          height: 150.0,
        ),
        new Text(items[index],
            style: new TextStyle(fontSize: 50.0, color: Colors.white))
      ],
    );
  }

  Widget buildSummary() => new Container(
        margin:
            new EdgeInsets.only(left: 5.0, top: 5.0, right: 5.0, bottom: 0.0),
        decoration: new BoxDecoration(
            color: Colors.black26,
            border: new Border.all(color: Colors.black, width: 0.5)),
        child: new Text(
            "Pavlova ia a meringue-based dessert named after the Russian ballerine Anna Pavlova. Pavlova featues a crisp crust and soft, light inside, topped with fruit and whipped cream.",
            style: new TextStyle(fontSize: 9.0, color: Colors.black)),
      );

  Widget buildTitle() => new Container(
        margin:
            new EdgeInsets.only(left: 5.0, top: 5.0, right: 5.0, bottom: 0.0),
        padding:
            new EdgeInsets.only(left: 5.0, top: 0.0, right: 5.0, bottom: 0.0),
        decoration: new BoxDecoration(
            color: Colors.black26,
            border: new Border.all(color: Colors.black, width: 0.5)),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Text("Strawberry Pavlova",
                style: new TextStyle(
                    fontSize: 10.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold))
          ],
        ),
      );

  Widget buildRatings() {
    return new Container(
      margin: new EdgeInsets.only(left: 5.0, top: 5.0, right: 5.0, bottom: 0.0),
      decoration: new BoxDecoration(
          color: Colors.black26,
          border: new Border.all(color: Colors.black, width: 0.5)),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Icon(
                Icons.star,
                color: Colors.black,
                size: 8.0,
              ),
              new Icon(
                Icons.star,
                color: Colors.black,
                size: 8.0,
              ),
              new Icon(
                Icons.star,
                color: Colors.black,
                size: 8.0,
              ),
              new Icon(
                Icons.star,
                color: Colors.black,
                size: 8.0,
              ),
              new Icon(
                Icons.star,
                color: Colors.black,
                size: 8.0,
              ),
            ],
          ),
          new Text(
            "170 Reviews",
            style: new TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
                letterSpacing: 0.5,
                fontSize: 8.0),
          )
        ],
      ),
    );
  }

  Widget buildIconList() {
    return new Container(
      margin: new EdgeInsets.only(left: 5.0, top: 5.0, right: 5.0, bottom: 0.0),
      decoration: new BoxDecoration(
          color: Colors.black26,
          border: new Border.all(color: Colors.black, width: 0.5)),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Icon(
                Icons.kitchen,
                color: Colors.green[500],
                size: 12.0,
              ),
              new Text(
                "PREP:",
                style: new TextStyle(fontSize: 8.0),
              ),
              new Text(
                "25 min",
                style: new TextStyle(fontSize: 8.0),
              ),
            ],
          ),
          new Column(
            children: <Widget>[
              new Icon(
                Icons.kitchen,
                color: Colors.green[500],
                size: 12.0,
              ),
              new Text(
                "COOK:",
                style: new TextStyle(fontSize: 8.0),
              ),
              new Text(
                "1 hr",
                style: new TextStyle(fontSize: 8.0),
              ),
            ],
          ),
          new Column(
            children: <Widget>[
              new Icon(
                Icons.kitchen,
                color: Colors.green[500],
                size: 12.0,
              ),
              new Text(
                "FEEDS:",
                style: new TextStyle(fontSize: 8.0),
              ),
              new Text(
                "4-6",
                style: new TextStyle(fontSize: 8.0),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildDivider(index) {
    double dividerHeight = 8.0;
    if (index >= items.length - 1) dividerHeight = 0.0;
    return new Divider(
      height: dividerHeight,
    );
  }
}
