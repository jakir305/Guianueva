import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListCardsEventos extends StatelessWidget {
  final String descripcion1;

  final String nombre;
  final String url;

  ListCardsEventos({
    this.descripcion1,
    this.nombre,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    final Color colorfont = Color.fromRGBO(87, 88, 90, 1);
    final Color colorfont2 = Color.fromRGBO(228, 67, 128, 1);

    return Container(
      decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 1.0,
            spreadRadius: 1.0,
            offset: Offset(1.0, 1.0), // shadow direction: bottom right
          )
        ],
      ),
      child: Card(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
        color: Colors.white,
        elevation: 20.0,
        child: InkWell(
          onTap: () async {
            launch(url);
          },
          child: Container(
            alignment: AlignmentDirectional.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: AlignmentDirectional.center,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        nombre,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "MBold",
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700,
                          color: colorfont,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    descripcion1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "MItalic",
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                      color: colorfont2,
                    ),
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
