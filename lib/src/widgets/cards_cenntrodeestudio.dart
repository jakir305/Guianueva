import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

class ListCardsCentrodeEstudio extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final double latitud;
  final double longitud;

  final String url;

  ListCardsCentrodeEstudio({
    this.nombre,
    this.url,
    this.descripcion,
    this.latitud,
    this.longitud,
  });

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    final Color color = Color.fromRGBO(151, 203, 90, 1);
    final Color colorFont = Color.fromRGBO(87, 88, 90, 1);

    return GestureDetector(
      onTap: () async {
        MapsLauncher.launchQuery('Int. Pedro Linares 1520, Neuquén');
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
            width: _screenSize.width * 0.9,
            height: _screenSize.height * 0.098,
            child: (Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: AutoSizeText(
                  nombre,
                  style: TextStyle(fontFamily: 'MBold', color: colorFont),
                  maxLines: 1,
                  maxFontSize: 15,
                  minFontSize: 13,
                )),
              ],
            )),
          ) // child widget, replace with your own
          ),
    );
  }
}
