import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:guiae/src/widgets/showdialog_centros_de_estudio.dart';

class ListCardsCentrodeEstudio extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final String lugar;
  final String url;

  ListCardsCentrodeEstudio({
    this.lugar,
    this.nombre,
    this.url,
    this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    final Color color = Color.fromRGBO(151, 203, 90, 1);
    final Color colorFont = Color.fromRGBO(87, 88, 90, 1);

    return GestureDetector(
      onTap: () async {
        ShowDialogCentrosCarreras(
          nombre: nombre,
          url: url,
          descripcion: descripcion,
          lugar: lugar,
        ).alerta(context);
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: AutoSizeText(
                    nombre,
                    style: TextStyle(fontFamily: 'MBold', color: colorFont),
                    maxLines: 1,
                    maxFontSize: 18,
                    minFontSize: 15,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )),
          ) // child widget, replace with your own
          ),
    );
  }
}
