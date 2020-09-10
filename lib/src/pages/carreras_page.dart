import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:guiae/src/providers/universidades_info.dart';
import 'package:guiae/src/widgets/card_carreras.dart';

import 'package:provider/provider.dart';

class ListaDeCarreras extends StatelessWidget {
  final Color color = new Color.fromRGBO(11, 174, 212, 1);

  @override
  Widget build(BuildContext context) {
    final universidadInfo = Provider.of<UniversidadInfo>(context);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                  width: 45.0,
                  height: 45.0,
                  child: Image(
                    image:
                        AssetImage("Asset/${universidadInfo.universidad}.png"),
                  )),
            ),
            SizedBox(
              width: 10.0,
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                "Carreras " + universidadInfo.universidad,
                style: TextStyle(fontFamily: 'MSemi', fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.6, 1],
                colors: [Colors.white, color]),
          ),
          child: mostrarCarrera(context)),
    );
  }

  mostrarCarrera(BuildContext context) {
    final universidadInfo = Provider.of<UniversidadInfo>(context);

    CollectionReference users =
        FirebaseFirestore.instance.collection(universidadInfo.universidad);
    return StreamBuilder<QuerySnapshot>(
        stream: users.snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Algo salio mal');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          return ListView(
              children: snapshot.data.docs.map((DocumentSnapshot document) {
            return ListCardsCarreras(
              carreras: (document.data()['Carrera']),
              facultad: (document.data()['Facultad']),
              url: (document.data()['Url']),
              localidad: (document.data()['Localidad']),
              universidad: (document.data()['Universidad']),
              descripcion: (document.data()['Descripción']),
            );
          }).toList());
        });
  }
}
