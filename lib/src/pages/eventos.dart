import 'package:flutter/material.dart';

class Eventos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text('Eventos'),
              backgroundColor: Colors.purple[700],
              elevation: 0.0,
            ),
            body: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                vertical: 1.0,
              ),
              height: 500,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 100.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        clipBehavior: Clip.hardEdge,
                        child: Image.network(
                            "https://www.espaciopilar.com.ar/img/slider/slider1.jpg"),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
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
                  ),
                ],
              ),
            )));
  }

  Widget _card(BuildContext context) {
    return Container(
      width: 120,
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          color: Colors.purple[100],
          child: Wrap(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                clipBehavior: Clip.hardEdge,
                child: Image.network(
                    "https://i.pinimg.com/originals/f8/a2/10/f8a21088d331a0be109b4a399bfed8bc.jpg"),
              ),
              ListTile(
                title: Text("Evento1"),
                subtitle: Text("subtititulo1"),
              )
            ],
          )),
    );
  }
}
