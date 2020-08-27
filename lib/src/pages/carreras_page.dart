import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:guiae/src/providers/carreras_info.dart';
import 'package:guiae/src/providers/universidades_info.dart';

import 'package:provider/provider.dart';

class ListaDeCarreras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola'),
      ),
      body: mostrarCarrera(context),
    );
  }

  mostrarCarrera(BuildContext context) {
    final universidadInfo = Provider.of<UniversidadInfo>(context);
    final carreraInfo = Provider.of<CarreraInfo>(context);

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

        return new ListView(
          children: snapshot.data.docs.map((DocumentSnapshot document) {
            return GestureDetector(
              onTap: () {
                carreraInfo.carrera = document.data()['Carrera'];
                print(carreraInfo.carrera);
                Navigator.pushNamed(context, 'detalles');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  new ListTile(
                    title: new Text(document.data()['Carrera']),
                    subtitle: new Text(document.data()['Facultad']),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                ],
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
