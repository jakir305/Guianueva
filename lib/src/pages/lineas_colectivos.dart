import 'package:flutter/material.dart';
import 'package:guiae/src/Utils/text_style.dart';
import 'package:url_launcher/url_launcher.dart';


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
            cardPrueba(context),
          ],
        ),
    );
}

Widget cardPrueba(BuildContext context){
  final _screenSize = MediaQuery.of(context).size;
    return InkWell(
            child: Container(
              width: double.infinity,
              height: _screenSize.height * 0.2,
              child: Card(
        elevation: 10.0,
        child: Row(
          children: <Widget>[
              Icon(Icons.directions_car,size: 60,),
              SizedBox(width: 10.0,),
              Text('Linea 1',style:styleNombreUniver,),
          ],
        ),
      ),
            ),
    onTap: () async{
      launch('https://www.neuquencapital.gov.ar/wp-content/uploads/horarios-colectivos/linea-1-emergencia-2020.pdf');
      },
    );
  }
}


