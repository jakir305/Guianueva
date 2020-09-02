import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
      body: _body(context),
    );
  }

  Widget _body(BuildContext context){
    CollectionReference users =
      FirebaseFirestore.instance.collection("Colectivos");
    return StreamBuilder<QuerySnapshot>(
      stream: users.snapshots(),
      builder: (BuildContext context,snapshot) {
        if (snapshot.hasError) {
          return Text('Algo salio mal');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        return Container(
                decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 1],
                  colors: [Colors.white, Color.fromRGBO(144, 71, 150, 1)])
                  ),
                      child: new ListView(
                      children: snapshot.data.docs.map((DocumentSnapshot document) {
                      return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      new ListCardsColectivos(lugar: document.data()['Nombre'],
                        url: document.data()['Url'],),
                      ],
              );
            }).toList(),
          ),
        );
      },
    );
  }
  
}


