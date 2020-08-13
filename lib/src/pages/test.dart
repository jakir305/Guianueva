import 'package:flutter/material.dart';
import 'package:guiae/src/widgets/card_test.dart';

class Testvocacional extends StatefulWidget {
  @override
  _TestvocacionalState createState() => _TestvocacionalState();
}

class _TestvocacionalState extends State<Testvocacional> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Colors.blue,
      color2: Colors.purple,
      pregunta: "¿Pregunta 1?",
      next: () {
        Navigator.pushNamed(context, 'test1');
      },
      text1: "1",
      text2: "2",
      text3: "3",
      text4: "4",
      text5: "5",
    );
  }
}

class Testvocacional2 extends StatefulWidget {
  @override
  _Testvocacional2State createState() => _Testvocacional2State();
}

class _Testvocacional2State extends State<Testvocacional2> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Colors.purple,
      color2: Colors.red,
      pregunta: "¿Pregunta 2?",
      next: () {
        Navigator.pushNamed(context, 'test1');
      },
      text1: "1",
      text2: "2",
      text3: "3",
      text4: "4",
      text5: "5",
    );
  }
}

class Testvocacional3 extends StatefulWidget {
  @override
  _Testvocacional3State createState() => _Testvocacional3State();
}

class _Testvocacional3State extends State<Testvocacional3> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Colors.red,
      color2: Colors.orange,
      pregunta: "¿Pregunta 3?",
      next: () {
        Navigator.pushNamed(context, 'test1');
      },
      text1: "1",
      text2: "2",
      text3: "3",
      text4: "4",
      text5: "5",
    );
  }
}
