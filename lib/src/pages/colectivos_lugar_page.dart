import 'package:flutter/material.dart';

import 'package:guiae/src/widgets/cards_colectivos.dart';

class ColectivosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(144, 71, 150, 1),
        title: Text(
          'Colectivos',
          style: TextStyle(fontFamily: 'MExtra'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.5, 1],
                colors: [Colors.white, Color.fromRGBO(144, 71, 150, 1)])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            colectivosCard(context),
          ],
        ),
      ),
    );
  }

  Widget colectivosCard(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        height: _screenSize.height * 0.8,
        child: ListView(
          children: <Widget>[
            ListCardsColectivos(
              lugar: "Neuquén",
              url: "https://www.neuquencapital.gov.ar/transporte/",
            ),
            ListCardsColectivos(
              lugar: "San Carlos de Bariloche",
              url: "http://www.mibus.com.ar/bariloche/",
            ),
          ],
        ));
  }
}
