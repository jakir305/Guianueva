import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListCardsCentrodeEstudio extends StatelessWidget {
  final String nombre;
  final String descripcion;

  final String url;

  ListCardsCentrodeEstudio({
    this.nombre,
    this.url,
    this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    final Color color = Color.fromRGBO(151, 203, 90, 1);

    return GestureDetector(
      onTap: () async {
        launch(url);
      },
      child: Container(
          margin: EdgeInsets.only(top: 5.0),
          decoration: BoxDecoration(
            border: Border.all(color: color, width: 2.0),
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 1.0,
                spreadRadius: 1.0,
                offset: Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],
          ),
          child: Container(
            width: 330,
            height: 40,
            child: (Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text(
                  nombre,
                  style: TextStyle(fontFamily: 'MMedium', fontSize: 15),
                )),
                SizedBox(
                  height: 2.0,
                ),
                Center(
                    child: Text(
                  descripcion,
                  style: TextStyle(fontFamily: 'MMedium', fontSize: 12),
                )),
              ],
            )),
          ) // child widget, replace with your own
          ),
    );
  }
}
