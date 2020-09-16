import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ShowDialogTrasporte {
  final String nombre;
  final String url;
  final String descripcion;

  ShowDialogTrasporte({
    @required this.nombre,
    @required this.url,
    @required this.descripcion,
  });

  alerta(BuildContext context) {
    final Color colorfont1 = Color(0xff3C3C3B);
    final Color colorfont2 = Color.fromRGBO(144, 71, 150, 1);
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        if (url == '') {
          // Si la url es vacia solo muestra un boton
          return CupertinoAlertDialog(
            content: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: <Widget>[
                  RichText(
                    textAlign: TextAlign.center,
                    text: new TextSpan(
                      style: TextStyle(
                        color: colorfont1,
                        fontSize: 13.0,
                        fontFamily: "MMedium",
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Ciudad: ',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: "MExtra",
                            )),
                        TextSpan(
                            text: nombre,
                            style: TextStyle(
                                fontFamily: "MBlackitalic", color: colorfont2)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: new TextSpan(
                      style: TextStyle(
                        color: colorfont1,
                        fontSize: 13.0,
                        fontFamily: "MMedium",
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Contacto: ',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: "MExtra",
                            )),
                        TextSpan(
                            text: descripcion,
                            style: TextStyle(
                                fontFamily: "MBlackitalic", color: colorfont2)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text(
                  'Cerrar',
                  style:
                      TextStyle(fontFamily: "MBlackitalic", color: colorfont2),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        } else

          // Si url no es vacio muestra los dos botones
          return CupertinoAlertDialog(
            content: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: <Widget>[
                  RichText(
                    textAlign: TextAlign.center,
                    text: new TextSpan(
                      style: TextStyle(
                        color: colorfont1,
                        fontSize: 13.0,
                        fontFamily: "MMedium",
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Ciudad: ',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: "MExtra",
                            )),
                        TextSpan(
                            text: nombre,
                            style: TextStyle(
                                fontFamily: "MBlackitalic", color: colorfont2)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: new TextSpan(
                      style: TextStyle(
                        color: colorfont1,
                        fontSize: 13.0,
                        fontFamily: "MMedium",
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Contacto: ',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: "MExtra",
                            )),
                        TextSpan(
                            text: descripcion,
                            style: TextStyle(
                                fontFamily: "MBlackitalic", color: colorfont2)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text(
                  'Cerrar',
                  style:
                      TextStyle(fontFamily: "MBlackitalic", color: colorfont2),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              CupertinoDialogAction(
                child: Text('Ir al link',
                    style: TextStyle(
                        fontFamily: "MBlackitalic", color: colorfont2)),
                onPressed: () {
                  _launchURL();
                },
              ),
            ],
          );
      },
    );
  }

  _launchURL() async {
    if (url != '') {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'No se pudo ingresar al link $url';
      }
    }
  }
}
