import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListaDeCarreras extends StatefulWidget {
 
  @override
  _ListaDeCarrerasState createState() => _ListaDeCarrerasState();
}

class _ListaDeCarrerasState extends State<ListaDeCarreras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carreras'),
        backgroundColor: Colors.tealAccent[700],
      ),

      body: _cardList(),
    );
  }


  Widget _cardList(){

    final _screenSize = MediaQuery.of(context).size;

    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, cantUni) => Column(
              children: <Widget>[
                Container(
                  width: _screenSize.width * 0.95,
                  child: Card(
                    elevation: 15.0,
                    child: InkWell(
                      child: Text(
                        'Ingenieria Electronica',
                        style: TextStyle(fontSize: 28),
                      ),
                      onTap: () {

                        launch('http://fainweb.uncoma.edu.ar/carrera?id=26');


                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                )
              ],
            ),
            childCount: 16,
          ),
        )
      ],
    );
  }
}
