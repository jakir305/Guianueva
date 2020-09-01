import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

class ListCardsTest extends StatelessWidget {
  final String pregunta;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final Object next1;
  final Object next2;
  final Object next3;
  final Object next4;
  final Object next5;
  final Color color1;
  final Color color2;

  ListCardsTest({
    @required this.pregunta,
    @required this.text1,
    @required this.text2,
    @required this.text3,
    @required this.text4,
    @required this.text5,
    @required this.next1,
    @required this.next2,
    @required this.next3,
    @required this.next4,
    @required this.next5,
    @required this.color1,
    @required this.color2,
  });

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [color1, color2]),
          ),
          padding: EdgeInsets.all(
            10,
          ),
          child: ListView(children: <Widget>[
            Container(
              height: _screenSize.height * 0.12,
              width: double.infinity,
              child: Text(
                pregunta,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white, fontSize: 18, fontFamily: "MMedium"),
              ),
            ),
            Testcard(
              link: next1,
              text: text1,
            ),
            Testcard(
              link: next2,
              text: text2,
            ),
            Testcard(
              link: next3,
              text: text3,
            ),
            Testcard(
              link: next4,
              text: text4,
            ),
            Testcard(
              link: next5,
              text: text5,
            ),
          ]),
        ),
      ),
    );
  }
}

class Testcard extends StatelessWidget {
  final String text;
  final VoidCallback link;

  Testcard({
    @required this.text,
    this.link,
  });

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: InkWell(
        onTap: link,
        child: Container(
          alignment: AlignmentDirectional.center,
          height: _screenSize.height * 0.125,
          width: double.infinity,
          padding: EdgeInsets.all(5),
          child: Text(
            text,
            style: TextStyle(fontSize: 19, fontFamily: "MMedium"),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
