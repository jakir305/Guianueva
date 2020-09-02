import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:guiae/src/widgets/cards_cenntrodeestudio.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CentrosEstudio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[200],
        appBar: GradientAppBar(
          title: Text('Centro de Estudios'),
          backgroundColorStart: Colors.redAccent,
          backgroundColorEnd: Colors.white,
          elevation: 0.0,
        ),
        body: _body(context)
        );
  }


Widget _body(BuildContext context){
    CollectionReference users =
      FirebaseFirestore.instance.collection("Centrodeestudio");
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
                  colors: [Colors.white, Colors.redAccent])
                  ),
                      child: new ListView(
                      children: snapshot.data.docs.map((DocumentSnapshot document) {
                      return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      new ListCardsCentrodeEstudio(
                        nombre: document.data()['Nombre'],
                        latitud: document.data()['Latitud'],
                        longitud: document.data()['Longitud'],
                        descripcion: document.data()['Subtitulo'],
                        ),
                      ],
              );
            }).toList(),
          ),
        );
      },
    );
  }

}

