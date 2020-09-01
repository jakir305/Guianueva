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
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles'),
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
      stream: users.where("Carrera",isEqualTo: carreraInfo.carrera).snapshots(),
      builder: (BuildContext context,snapshot) {
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
                new ListTile(
                  title: new Text(document.data()['Carrera']),
                  subtitle: new Text(document.data()['Facultad']),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            );
          }).toList(),
        );
      },
    );
  }
  
}
