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
        body: ListView(
          children: [
            SizedBox(
              height: 15.0,
            ),
            _image(),
            _body(context),
          ],
        ));
  }

  Widget _image() {
    return Container(
      child: Image(
        image: AssetImage("Asset/biblioteca.jpg"),
      ),
    );
  }

  Widget _body(BuildContext context) {
    final _screensize = MediaQuery.of(context).size;
    CollectionReference users =
        FirebaseFirestore.instance.collection("Centrodeestudio");
    return Container(
      width: double.infinity,
      height: _screensize.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 1],
              colors: [Colors.white, Color.fromRGBO(144, 71, 150, 1)])),
      child: StreamBuilder<QuerySnapshot>(
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
              return Container(
                child: ListCardsCentrodeEstudio(
                  nombre: document.data()['Nombre'],
                  descripcion: document.data()['Subtitulo'],
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
