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
        child: Container(
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                clipBehavior: Clip.hardEdge,
                child: Image.network(
                    "https://scontent.fbrc1-1.fna.fbcdn.net/v/t1.0-9/108031074_643749239559434_4292124369054086188_o.jpg?_nc_cat=104&_nc_sid=8bfeb9&_nc_ohc=bP3sUwtlg-MAX_DVoZ3&_nc_ht=scontent.fbrc1-1.fna&oh=3a6b2ede86103a916276ec283b2e3741&oe=5F489BA7"),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Ministerio de Niñez, Juventud y Adolecencia",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blueAccent, fontSize: 20),
              ),
              Text(
                "Subsecretaria de Juventud",
                style: TextStyle(color: Colors.green, fontSize: 18),
              ),
              Text("Provincia de Neuquén"),
            ],
          ),
        ),
      ),
    );
  }
}
