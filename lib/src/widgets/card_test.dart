import 'dart:ffi';

import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:guiae/src/Utils/text_style.dart';

class ListCardsTest extends StatelessWidget {
  int _humanidades = 0;
  int _arte = 0;
  int _administracion = 0;
  int _biologia = 0;
  int _matematica = 0;

  final String pregunta;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final Object next;
  final Color color1;
  final Color color2;

  ListCardsTest({
    @required this.pregunta,
    @required this.text1,
    @required this.text2,
    @required this.text3,
    @required this.text4,
    @required this.text5,
    @required this.next,
    @required this.color1,
    @required this.color2,
  });

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: GradientAppBar(
          title: Text(
            'Test',
            style: styleappbar,
            textAlign: TextAlign.center,
          ),
          backgroundColorStart: color1,
          backgroundColorEnd: color2,
          elevation: 0.0,
        ),
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
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Testcard(
              link: () {
                _humanidades++;
                next;
              },
              text: text1,
            ),
            Testcard(
              link: () {
                _arte++;
                next;
              },
              text: text2,
            ),
            Testcard(
              link: () {
                _administracion++;
                next;
              },
              text: text3,
            ),
            Testcard(
              link: () {
                _biologia++;
                next;
              },
              text: text4,
            ),
            Testcard(
              link: () {
                _matematica++;
                next;
              },
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
      child: Container(
        height: _screenSize.height * 0.125,
        width: double.infinity,
        padding: EdgeInsets.all(5),
        child: InkWell(
          onTap: link,
          child: Text(
            text,
            style: TextStyle(fontSize: 19),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
