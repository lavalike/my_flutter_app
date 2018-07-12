import 'package:flutter/material.dart';

class FontsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new FontsPageState();
}

class FontsPageState extends State<FontsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Fonts"),
      ),
      body: new ListView(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.all(10.0),
            child: new Text(
              "我是普通农村家长大的孩子，家里没有任何“背景”,记得小考之后，如果按片儿划分，我只能被分到镇普通中学。可是我全年级第一的成绩，好多不如我的人都要出去外边读书，我怎么忍心一直在这个小地方待着呢?于是母亲骑自行车去临边县城帮我问学校，但是无奈没有几分人脉，想进一个好学校谈何容易？母亲去了好多次，那学校看在我成绩还不错的情况下和母亲要700块钱，母亲犹豫了，回到家里商量，觉着700对我们家来说有点儿多。我觉着那天好像是阴天，阴暗的房间里，我坐在一把黄色发白的木椅上，母亲有点儿无奈又有点儿不好意思地对我说:“姑娘，要是实在不行，咱就在家附近念吧，这里也有学习好的。”我记得我当时眼泪夺眶而出，我趴在椅子的靠背上，嘶声力竭地对母亲说我不要在这里读书，我要出去。我只记得当时母亲轻轻咽了一口唾沫，想说什么却没有说出来。一抬头，我便看到了母亲眼角的泪，她极力地掩饰着，却又带着几分笨拙。如今我也分不清当时的嘶吼是为了对求知的渴望，还是害怕别的同学会给我投来鄙视的目光。总之我是在从当时生活处境艰难的父母身上在努力争取着一些东西，我的这种要求迫使着父母亲不断地“超越”着他们自己。很多人都说，能用钱解决的问题，都不是问题。可对于那时的我来说，钱就是最大的问题。",
              style: new TextStyle(
                fontSize: 28.0,
                fontFamily: "classic",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
