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
    final Color colorfont = Color.fromRGBO(87, 88, 90, 1);
    final Color colorfont2 = Color.fromRGBO(117, 118, 120, 1);

    return GestureDetector(
      onTap: () async {
        launch(url);
      },
      child: Card(
        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
        color: Colors.white,
        elevation: 20,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
          50.0,
        )),
        child: Container(
          alignment: AlignmentDirectional.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                nombre,
                style: TextStyle(
                    fontFamily: 'MBold', fontSize: 20, color: colorfont),
                textAlign: TextAlign.center,
              ),
              Text(
                descripcion,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'MItalic', fontSize: 15, color: colorfont2),
              )
            ],
          ),
        ),
      ),
    );
  }
}
