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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          colectivosCard(),
          
        ],
      ),
    );
}
  
   Widget colectivosCard() {
     return ListCardsColectivos(
       lugar: 'Neuquen',
     );


  }
  
  
  
  }
