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
    final Color borderColor = Color(0xffb904795);

    return GestureDetector(
        onTap: () async {
          launch(url);
        },
        child: ClipRRect(
          child: Container(
            height: 50.0,
            width: 80.0,
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.white)],
                border: Border.all(color: borderColor, width: 1.5),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: InkWell(
              onTap: () async {
                launch(url);
              },
              child: Center(
                child: Text(
                  nombre,
                  style: TextStyle(fontFamily: 'MMedium', fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ));
  }
}
