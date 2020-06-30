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
          colectivosCard(context),
          
        ],
      ),
    );
}
  
   Widget colectivosCard(BuildContext context) {
     final _screenSize = MediaQuery.of(context).size;
     return Container(
       width: double.infinity,
       height: _screenSize.height * 0.2,
       child: ListCardsColectivos(
         lugar: 'Neuquen',
       ),
     );


  }
  
  
  
  }
