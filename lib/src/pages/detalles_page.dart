import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:guiae/src/providers/carreras_info.dart';
import 'package:guiae/src/providers/universidades_info.dart';
import 'package:provider/provider.dart';

class CarreraDetalles extends StatefulWidget {
  const CarreraDetalles({Key key}) : super(key: key);

  @override
  _CarreraDetallesState createState() => _CarreraDetallesState();
}

class _CarreraDetallesState extends State<CarreraDetalles> {
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
                  width: 40.0,
                  height: 40.0,
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
      body: mostrarCarrera(context),
    );
  }

  Widget mostrarCarrera(BuildContext context) {
    final universidadInfo = Provider.of<UniversidadInfo>(context);
    final carreraInfo = Provider.of<CarreraInfo>(context);

    CollectionReference users =
        FirebaseFirestore.instance.collection(universidadInfo.universidad);
    return StreamBuilder<QuerySnapshot>(
      stream:
          users.where("Carrera", isEqualTo: carreraInfo.carrera).snapshots(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasError) {
          return Text('Algo salio mal');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

        return new ListView(
          children: snapshot.data.docs.map((DocumentSnapshot document) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Carrera: ${document.data()['Carrera']}"),
                Text(document.data()['Facultad']),
              ],
            );
          }).toList(),
        );
      },
    );
  }
}
