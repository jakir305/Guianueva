import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:guiae/src/Utils/text_style.dart';
import 'package:guiae/src/widgets/cards_becas.dart';

class Becasvarias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: GradientAppBar(
        title: Text(
          'Becas',
          style: styleappbar,
        ),
        backgroundColorStart: Colors.tealAccent,
        backgroundColorEnd: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.teal, Colors.white]),
          ),
          padding: EdgeInsets.all(
            10,
          ),
          child: _becasCard()),
    ));
  }

  Widget _becasCard() {

        CollectionReference users =
        FirebaseFirestore.instance.collection("Becas");
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
               
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListCardsBecas(institucion:(document.data()['Organismo']),
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
