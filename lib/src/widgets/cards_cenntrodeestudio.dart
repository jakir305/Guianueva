import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

class ListCardsCentrodeEstudio extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final double latitud;
  final double longitud;

  ListCardsCentrodeEstudio({
    this.nombre,
    this.descripcion,
    this.latitud,
    this.longitud,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => MapsLauncher.launchCoordinates(
                      latitud , longitud, nombre),
          child: Card(
        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
        color: Colors.white,
        elevation: 20,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
          20.0,
        )),
        child: Container(
          alignment: AlignmentDirectional.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                nombre,
                style: TextStyle(fontFamily: 'MMedium', fontSize: 20),
                textAlign: TextAlign.center,
              ),
              Text(
                descripcion,
                textAlign: TextAlign.center,
                style:TextStyle(fontFamily: 'MMedium', fontSize: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}
