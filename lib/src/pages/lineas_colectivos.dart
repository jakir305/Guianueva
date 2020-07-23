import 'package:flutter/material.dart';
import 'package:guiae/src/Utils/text_style.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class ColectivosLineasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[700],
        title: Text('Lineas'),
      ),
      body: Column(
        children: <Widget>[
          _botones(context),
          cardPrueba(context),
        ],
      ),
    );
  }

  Widget _botones(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        flex: 2,
          child: Card(
        color: Colors.blue[600],
        child: Container(
            height: 30, alignment: Alignment.center, child: Text("Dias Habiles",style: TextStyle(color: Colors.white),)),
      )),
      Expanded(
        flex: 2,
          child: Card(
        color: Colors.blue[600],
        child: Container(
            height: 30, alignment: Alignment.center, child: Text("Fines de Semana",style: TextStyle(color: Colors.white),)),
      )),
      Expanded(
        flex: 1,
          child: Card(
        color: Colors.blue[600],
        child: Container(
            height: 30, alignment: Alignment.center, child: Text("Otros",style: TextStyle(color: Colors.white),)),
      )),
    ]);
  }

  Widget cardPrueba(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return InkWell(
      child: Container(
        width: double.infinity,
        height: _screenSize.height * 0.2,
        child: Card(
          elevation: 10.0,
          child: Row(
            children: <Widget>[
              Icon(
                EvaIcons.globeOutline,
                size: 60,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Linea 1',
                style: styleNombreUniver,
              ),
            ],
          ),
        ),
      ),
      onTap: () async {
        launch(
            'https://www.neuquencapital.gov.ar/wp-content/uploads/horarios-colectivos/linea-1-emergencia-2020.pdf');
      },
    );
  }
}
