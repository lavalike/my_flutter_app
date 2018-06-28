import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new DetailPageState();
}

class DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          buildImage(),
          buildStar(),
          buildButtons(),
          buildText(),
          buildCircleImage(),
          buildCard(),
        ],
      ),
    );
  }

  Widget buildImage() {
    return new Image.asset(
      "images/bg.jpg",
      fit: BoxFit.cover,
    );
  }

  Widget buildStar() {
    return new Container(
      padding: new EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.only(bottom: 8.0),
                child: new Text(
                  "Oeschinen Lake Campground",
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              new Text(
                "Kandersteg, Switzerland",
                style: new TextStyle(color: Colors.grey[500]),
              )
            ],
          )),
          new Icon(Icons.star, color: Colors.red),
          new Text("41")
        ],
      ),
    );
  }

  Widget buildButtons() {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        getButton(Icons.call, "CALL"),
        getButton(Icons.near_me, "ROUTE"),
        getButton(Icons.share, "SHARE"),
      ],
    );
  }

  Widget getButton(IconData icon, String label) {
    return new MaterialButton(
      onPressed: () {
        Scaffold
            .of(context)
            .showSnackBar(new SnackBar(content: new Text("Fuck you")));
      },
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(icon, color: Colors.blue),
          new Container(
            margin: new EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildText() {
    return new Container(
      padding: new EdgeInsets.all(32.0),
      child: new Text(
        "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.",
        softWrap: true,
      ),
    );
  }

  Widget buildCircleImage() {
    return new Align(
        alignment: Alignment.center,
        child: new Container(
          margin: new EdgeInsets.only(bottom: 32.0),
          width: 100.0,
          height: 100.0,
          child: new CircleAvatar(
            backgroundImage: new AssetImage("images/bg.jpg"),
          ),
        ));
  }

  Widget buildCard() {
    return new SizedBox(
      child: new Card(
        child: new Column(
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new Image.asset(
                  "images/bg.jpg",
                  fit: BoxFit.cover,
                ),
                new Positioned(
                    left: 10.0,
                    bottom: 10.0,
                    right: 10.0,
                    child: new Text(
                      "Top 10 Australian beaches",
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    )),
              ],
            ),
            new Container(
              padding: new EdgeInsets.all(10.0),
              child: new Align(
                alignment: Alignment.centerLeft,
                child: new Text(
                  "Number 10\nWhitehaven Beach\nWhitsunday Island, Whitsunay Islands",
                  style: new TextStyle(fontSize: 12.0),
                ),
              ),
            ),
            new Row(
              children: <Widget>[
                new MaterialButton(
                  onPressed: () {},
                  child: new Text(
                    "SHARE",
                    style: new TextStyle(color: Colors.blue, fontSize: 12.0),
                  ),
                ),
                new MaterialButton(
                  onPressed: () {},
                  child: new Text(
                    "EXPLORE",
                    style: new TextStyle(color: Colors.blue, fontSize: 12.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
