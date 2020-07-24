import 'package:flutter/material.dart';
import 'package:guiae/src/widgets/cards_colectivos.dart';

class ColectivosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[700],
        title: Text('Colectivos'),
      ),
      body: Container(
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
              color: Colors.yellow[700],
              url: "https://www.neuquencapital.gov.ar/transporte/",
            ),
            ListCardsColectivos(
              lugar: "San Carlos de Bariloche",
              color: Colors.red[700],
              url: "http://www.mibus.com.ar/bariloche/",
            ),
          ],
        ));
  }
}
