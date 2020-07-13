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
                  nombre: "Beca Económica",
                  icon: AssetImage('Asset/unco.png'),
                  color: Colors.blueAccent,
                  url: "http://www.uncuyo.edu.ar/bienestar/oferta-de-becas",  
                ),

                ListCardsBecas(
                  institucion: 'Universidad Nacional de Cuyo',
                  nombre: "Beca Economica",
                  icon: AssetImage('Asset/unco.png'),
                  color: Colors.blueAccent,
                  url: "http://www.uncuyo.edu.ar/bienestar/oferta-de-becas",  
                ),
                
                ListCardsBecas(
                  institucion: 'Universidad Nacional de Cuyo',
                  nombre: "Beca Economica",
                  icon: AssetImage('Asset/unco.png'),
                  color: Colors.blueAccent,
                  url: "http://www.uncuyo.edu.ar/bienestar/oferta-de-becas",  
                ),
                
                ListCardsBecas(
                  institucion: 'Universidad Nacional de Cuyo',
                  nombre: "Beca Economica",
                  icon: AssetImage('Asset/unco.png'),
                  color: Colors.blueAccent,
                  url: "http://www.uncuyo.edu.ar/bienestar/oferta-de-becas",  
                ),
                
                ListCardsBecas(
                  institucion: 'Universidad Nacional de Rio Negro',
                  nombre: "Beca Económica",
                  icon: AssetImage('Asset/unco.png'),
                  color: Colors.blueAccent,
                  url: "https://www.unrn.edu.ar/section/48/programa-de-becas.html",  
                ),
                
                ListCardsBecas(
                  institucion: 'Universidad Nacional de Rio Negro',
                  nombre: "Beca Economica",
                  icon: AssetImage('Asset/unco.png'),
                  color: Colors.blueAccent,
                  url: "https://www.unrn.edu.ar/section/48/programa-de-becas.html",  
                ),
                
                ListCardsBecas(
                  institucion: 'Universidad Nacional de Rio Negro',
                  nombre: "Beca Economica",
                  icon: AssetImage('Asset/unco.png'),
                  color: Colors.blueAccent,
                  url: "https://www.unrn.edu.ar/section/48/programa-de-becas.html",  
                ),
                
                ListCardsBecas(
                  institucion: 'Universidad Nacional de Rio Negro',
                  nombre: "Beca Economica",
                  icon: AssetImage('Asset/unco.png'),
                  color: Colors.blueAccent,
                  url: "https://www.unrn.edu.ar/section/48/programa-de-becas.html",  
                ),
                
                ListCardsBecas(
                  institucion: 'Universidad Nacional de Rio Negro',
                  nombre: "Beca Economica",
                  icon: AssetImage('Asset/unco.png'),
                  color: Colors.blueAccent,
                  url: "https://www.unrn.edu.ar/section/48/programa-de-becas.html",  
                ),
                
                ListCardsBecas(
                  institucion: 'Consejo Deliberante de la Ciudad de Neuquén',
                  nombre: "Beca Economica",
                  icon: AssetImage('Asset/unco.png'),
                  color: Colors.blueAccent,
                  url: "www.cdnqn.gov.ar",  
                ),
                
                ListCardsBecas(
                  institucion: 'Ministerio de Educación de la Provincia de Neuquén',
                  nombre: "Beca Económica",
                  icon: AssetImage('Asset/unco.png'),
                  color: Colors.blueAccent,
                  url: "www.neuquen.edu.ar",  
                ),
                
                ListCardsBecas(
                  institucion: 'Compromiso Docente',
                  nombre: "Beca Económica",
                  icon: AssetImage('Asset/unco.png'),
                  color: Colors.blueAccent,
                  url: "http//www.argentina.gob.ar/becasprogresar",  
                ),
                



        ]
      );

  }
}