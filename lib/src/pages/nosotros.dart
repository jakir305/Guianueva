import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:guiae/src/Textos/Textos.dart';

class Nosotros extends StatefulWidget {
  Nosotros({Key key}) : super(key: key);

  @override
  _NosotrosState createState() => _NosotrosState();
}

class _NosotrosState extends State<Nosotros> {
  final color = const Color(0xFF00A7A1);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: color,
            title:
                Text("Quienes Somos", style: TextStyle(fontFamily: "MSemi"))),
        body: ListView(
          children: [_imagen(context)],
        ),
      ),
    );
  }

  Widget _imagen(BuildContext context) {
    final _screensize = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            height: _screensize.height * 0.5,
            child: Image(
              image: AssetImage("Asset/portada.png"),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: acercaDeNosotros,
          ),
        ],
      ),
    );
  }
}
