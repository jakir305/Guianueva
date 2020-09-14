import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:guiae/src/widgets/cards_cenntrodeestudio.dart';

class CentrosEstudio extends StatelessWidget {
  final Color color = Color.fromRGBO(151, 203, 90, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color,
          title: Text(
            "Centros de estudio",
            style: TextStyle(
                fontFamily: "MBold",
                color: Colors.white,
                fontWeight: FontWeight.w900),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.55, 1],
                  colors: [Colors.white, Color.fromRGBO(151, 203, 90, 1)])),
          child: ListView(
            children: [
              _image(context),
              _body(context),
            ],
          ),
        ));
  }

  Widget _image(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage("Asset/biblioteca.jpg"),
      ),
    );
  }

  Widget _body(BuildContext context) {
    CollectionReference users =
        FirebaseFirestore.instance.collection("Centrodeestudio");
    return StreamBuilder<QuerySnapshot>(
      stream: users.snapshots(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasError) {
          return Text('Algo salio mal');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        return new Column(
          children: snapshot.data.docs.map((DocumentSnapshot document) {
            return Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                child: ListCardsCentrodeEstudio(
                  nombre: document.data()['Nombre'],
                  descripcion: document.data()['Descripción'],
                  latitud: document.data()['Latitud'],
                  longitud: document.data()['Longitud'],
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
