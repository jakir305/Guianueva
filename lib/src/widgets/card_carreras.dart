import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:guiae/src/providers/universidades_info.dart';
import 'package:guiae/src/widgets/showdialog_carreras.dart';
import 'package:provider/provider.dart';

class ListCardsCarreras extends StatelessWidget {
  final Color color = new Color.fromRGBO(11, 174, 212, 1);
  final Color colorFont = Color.fromRGBO(87, 88, 90, 1);
  final String carreras;
  final String facultad;
  final String localidad;
  final String universidad;
  final String url;
  final String descripcion;

  ListCardsCarreras(
      {@required this.carreras,
      @required this.facultad,
      @required this.localidad,
      @required this.universidad,
      @required this.url,
      @required this.descripcion});

  @override
  Widget build(BuildContext context) {
    final universidadInfo = Provider.of<UniversidadInfo>(context);
    return Container(
      decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 1.0,
            spreadRadius: 0.0,
            offset: Offset(3.0, 3.0), // shadow direction: bottom right
          )
        ],
      ),
      child: Card(
        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
        color: Colors.white,
        elevation: 10.0,
        child: GestureDetector(
          onTap: () {
            ShowDialog(
                    facultad: facultad,
                    nombre: carreras,
                    duracion: descripcion,
                    icon:
                        AssetImage("Asset/${universidadInfo.universidad}.png"),
                    lugar: localidad,
                    url: url)
                .alerta(context);
          },
          child: Container(
            height: 70.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: AutoSizeText(
                    carreras,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: "MBold", color: colorFont),
                    maxFontSize: 18.0,
                    maxLines: 2,
                    minFontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: AutoSizeText(
                    facultad,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "MBlackitalic",
                      color: color,
                    ),
                    maxFontSize: 15.0,
                    minFontSize: 10,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
