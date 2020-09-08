import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:guiae/src/widgets/cards_cenntrodeestudio.dart';

class CentrosEstudio extends StatelessWidget {
  final Color color = Color.fromRGBO(151, 203, 90, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _appBar(),
        ],
      ),
    );
  }

  Widget _appBar() {
    return SliverAppBar(
      elevation: 2.0,
      backgroundColor: color,
      title: Text(
        "Centros de estudio",
        style: TextStyle(
            fontFamily: "MBold",
            color: Colors.white,
            fontWeight: FontWeight.w900),
      ),
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
    );
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
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 1],
                  colors: [Colors.white, color])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  height: _screenSize.height * 0.3,
                  child: Image.asset("Asset/biblioteca.jpg")),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: _screenSize.height * 0.53,
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
}
