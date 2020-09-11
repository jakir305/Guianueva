import 'package:flutter/material.dart';
import 'package:guiae/src/widgets/card_eventos.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Eventos extends StatefulWidget {
  @override
  _EventosState createState() => _EventosState();
}

class _EventosState extends State<Eventos> {
  final Color color = Color.fromRGBO(228, 67, 128, 1);
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color,
          title: Text(
            'Eventos',
            style: TextStyle(fontFamily: "Mbold", color: Colors.white),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 1],
                  colors: [Colors.white, color])),
          child: ListView(
            children: [_imageneventos(context), _body(context)],
          ),
        ));
  }

  Widget _body(BuildContext context) {
    CollectionReference users =
        FirebaseFirestore.instance.collection("Eventos");
    return StreamBuilder<QuerySnapshot>(
      stream: users.snapshots(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasError) {
          return Text('Algo salio mal');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: snapshot.data.docs.map((DocumentSnapshot document) {
            return ListCardsEventos(
              nombre: document.data()['Nombre'],
              url: document.data()['Url'],
              descripcion1: document.data()['Descripcion1'],
            );
          
          }).toList(),
        );
      },
    );
  }

  Widget _imageneventos(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
            height: _screenSize.height * 0.3,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("Asset/eventos.jpg",
                    )))
    );
  }
}
