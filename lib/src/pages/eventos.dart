import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class Eventos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        backgroundColorStart: Colors.purpleAccent,
        backgroundColorEnd: Colors.white,
        title: Text('Facultades'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.purple, Colors.white])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _imageneventos(context),
            _scrollview(context),
          ],
        ),
      ),
    );
  }

  Widget _imageneventos(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
        height: _screenSize.height * 0.4,
        width: double.infinity,
        child: Image(
            image: NetworkImage(
                "https://www.espaciopilar.com.ar/img/slider/slider1.jpg")));
  }

  Widget _scrollview(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      height: _screenSize.height * 0.45,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _card(context),
          _card(context),
          _card(context),
          _card(context),
          _card(context),
        ],
      ),
    );
  }

  // Widget _crearlistado(BuildContext context) {
  //   final _screenSize = MediaQuery.of(context).size;
  //   return Container(alignment: ,)
  // }

  Widget _card(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      width: 110,
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          color: Colors.purple[100],
          child: Wrap(
            children: <Widget>[
              Container(
                height: _screenSize.height * 0.33,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset("Asset/evento.jpg"),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Evento1",
                ),
                subtitle: Text("subtititulo1"),
              )
            ],
          )),
    );
  }
}
