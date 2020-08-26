import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MostrarCarreras extends StatelessWidget {
  final String documento;

  MostrarCarreras({
    @required this.documento,
  });

  @override
  Widget build(BuildContext context) {
    CollectionReference univesidades =
        FirebaseFirestore.instance.collection(documento);

    return StreamBuilder<QuerySnapshot>(
      stream: univesidades.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('No se pudo cargar');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

<<<<<<< HEAD:lib/src/pages/clouduniversidades.dart
<<<<<<< HEAD:lib/src/widgets/clouduniversidades.dart
        return Container(
          child: new ListView(
            children: snapshot.data.docs.map((DocumentSnapshot document) {
              return new ListTile(
                title: new Text(document.data()['Carrera']),
                subtitle: new Text(document.data()['Facultad']),
              );
            }).toList(),
          ),
=======
=======
>>>>>>> parent of 5e493fe... hoy:lib/src/widgets/clouduniversidades.dart
        return new ListView(
          children: snapshot.data.docs.map((DocumentSnapshot document) {
            return new ListTile(
              title: new Text(document.data()['Carrera']),
              subtitle: new Text(document.data()['Facultad']),
            );
          }).toList(),
<<<<<<< HEAD:lib/src/pages/clouduniversidades.dart
>>>>>>> parent of 5e493fe... hoy:lib/src/pages/clouduniversidades.dart
=======
>>>>>>> parent of 5e493fe... hoy:lib/src/widgets/clouduniversidades.dart
        );
      },
    );
  }
}
