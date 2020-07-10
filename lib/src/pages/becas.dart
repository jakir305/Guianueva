import 'package:flutter/material.dart';
import 'package:guiae/src/widgets/cards_becas.dart';

class Becasvarias extends StatelessWidget {

 @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Becas'),
          backgroundColor: Colors.tealAccent[700],
          elevation: 0.0,
          
        ),
        
          body: Container(
          padding: EdgeInsets.all(10),
          child: _becasCard()),
      )
    );
  }
  
   Widget _becasCard() {
      return ListView(
        children: <Widget>[
                ListCardsBecas(
                  institucion: 'Universidad Nacional de Cuyo',
                  nombre: "Beca Economica",
                  icon: AssetImage('Asset/unco.png'),
                  color: Colors.blueAccent,
                  url: "http://www.uncuyo.edu.ar/bienestar/oferta-de-becas",  
       ),
        ]
      );

  }
}