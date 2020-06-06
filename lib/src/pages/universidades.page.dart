import 'package:flutter/material.dart';
import 'package:guiae/src/widgets/cards_universidades.dart';



class UniversidadesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Universidades'),
          backgroundColor: Colors.tealAccent[700],
          elevation: 0.0,
          
        ),
        
          body: Container(
          padding: EdgeInsets.all(10),
          child: _cards()),
      )
    );
  }

    Widget _cards() {
      return ListView(
        children: <Widget>[

          ListCardsUniversidades(
            nombre: 'Unco',
            nombreCompleto: 'Universidad Del Comahue',
            icon: AssetImage('Asset/unco.png'),
            
            ),
            ListCardsUniversidades(
            nombre: 'Unrn',
            nombreCompleto: 'Universidad De Rio Negro',
            icon: AssetImage('Asset/unrn.png'),
            ),

            ListCardsUniversidades(
            nombre: 'Utn',
            nombreCompleto: 'Universidad Tecnologica Nacional',
            icon: AssetImage('Asset/utn.png'),
            ),

            ListCardsUniversidades(
            nombre: 'Cpe',
            nombreCompleto: 'Cpe',
            icon: AssetImage('Asset/unrn.png'),
            ),
             
             ListCardsUniversidades(
            nombre: 'Itp',
            nombreCompleto: 'Instituto Tecnológico de la Patagonia',
            icon: AssetImage('Asset/unrn.png'),
            ),

             ListCardsUniversidades(
            nombre: 'Uflo',
            nombreCompleto: 'Universidad de Flores',
            icon: AssetImage('Asset/unco.png'),
            ),

             ListCardsUniversidades(
            nombre: 'Escuela de la Policia',
            nombreCompleto: 'Escuela de la policia Neuquen',
            icon: AssetImage('Asset/unrn.png'),
            ),


          


        ],
      );


      

  }

  

    

  

}




