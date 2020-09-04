import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:guiae/src/widgets/cards_cenntrodeestudio.dart';

class CentrosEstudio extends StatelessWidget {
  final Color color = Color.fromRGBO(151, 203, 90, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[200],
        appBar: AppBar(
          title: Text(
            'Centro de Estudios',
            style: TextStyle(fontFamily: "MBold"),
          ),
          backgroundColor: color,
          elevation: 0.0,
        ),
        body: _body(context));
  }

  Widget _body(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    CollectionReference users =
        FirebaseFirestore.instance.collection("Biblotecas");
    return StreamBuilder<QuerySnapshot>(
      stream: users.snapshots(),
      builder: (BuildContext context, snapshot) {
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
                  colors: [Colors.white, color])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _imagenestudio(context),
              Container(
                height: _screenSize.height * 0.6,
                width: double.infinity,
                child: new ListView(
                  children: snapshot.data.docs.map((DocumentSnapshot document) {
                    return new ListCardsCentrodeEstudio(
                      nombre: document.data()['Nombre'],
                      url: document.data()['Url'],
                      descripcion: document.data()['Descripcion'],
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _imagenestudio(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
        height: _screenSize.height * 0.3,
        width: double.infinity,
        child: Image.asset("Asset/biblioteca.jpg"));
  }
}
