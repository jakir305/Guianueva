import 'package:flutter/cupertino.dart';

final color = const Color(0xFF00A7A1);
var acercaDeNosotros = new RichText(
  text: new TextSpan(
    // Note: Styles for TextSpans must be explicitly defined.
    // Child text spans will inherit styles from parent
    style: TextStyle(fontSize: 15.0, color: color, fontFamily: "MMedium"),
    children: <TextSpan>[
      TextSpan(text: 'En este nuevo formato la '),
      TextSpan(
          text: 'Subsecretaría de Juventud ',
          style: TextStyle(fontFamily: "MExtra")),
    ],
  ),
);
