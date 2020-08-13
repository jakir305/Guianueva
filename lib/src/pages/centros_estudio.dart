import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class CentrosEstudio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            backgroundColor: Colors.red[200],
            appBar: GradientAppBar(
              title: Text('Centro de Estudios'),
              backgroundColorStart: Colors.redAccent,
              backgroundColorEnd: Colors.white,
              elevation: 0.0,
            ),
            body: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.red, Colors.white])),
              padding: EdgeInsets.symmetric(
                vertical: 0.0,
              ),
              height: 500,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _card(context),
                  _card(context),
                ],
              ),
            )));
  }

  Widget _card(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      color: Colors.red[200],
      width: _screenSize.width * 0.4,
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          color: Colors.red[50],
          child: Wrap(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                clipBehavior: Clip.hardEdge,
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRLTQL1C9rXVcXcZcXpqZI2csMLEOtpLe-FoQ&usqp=CAU"),
              ),
              ListTile(
                title: Text("Centros de Estudio"),
                subtitle: Text("ubicación / caracteristica del centro"),
              )
            ],
          )),
    );
  }
}
