import 'package:flutter/material.dart';

class Nosotros extends StatefulWidget {
  Nosotros({Key key}) : super(key: key);

  @override
  _NosotrosState createState() => _NosotrosState();
}

class _NosotrosState extends State<Nosotros> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: _appbar(context),
        body: _body(context),
      ),
    );
  }

  Widget _appbar(BuildContext context) {
    return AppBar(
      title: Text("Acerca de Nosotros"),
      backgroundColor: Colors.greenAccent,
    );
  }

  Widget _body(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              "Ministerio de Niñez, Juventud y Adolecencia",
              style: TextStyle(color: Colors.blueAccent),
            ),
            Text(
              "Subsecretaria de Juventud",
              style: TextStyle(color: Colors.green),
            ),
            Text("Provincia de Neuquén"),
          ],
        ),
      ),
    );
  }
}
