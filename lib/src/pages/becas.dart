import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:guiae/src/widgets/cards_becas.dart';

class Becasvarias extends StatelessWidget {
  final Color color = new Color.fromRGBO(250, 171, 63, 1);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Becas',
          style: TextStyle(
              fontFamily: "MBold",
              color: Colors.white,
              fontWeight: FontWeight.w900),
        ),
        backgroundColor: color,
        elevation: 0.0,
      ),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, color]),
          ),
          child: _becasCard()),
    ));
  }

  Widget _becasCard() {
    CollectionReference users = FirebaseFirestore.instance.collection("Becas");
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
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListCardsBecas(
                    institucion: (document.data()['Organismo']),
                    url: (document.data()['Url']),
                    nombre: (document.data()['Tipo']),
                  )
                ],
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
