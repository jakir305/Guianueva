import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ShowDialog {
  final String nombre;
  final AssetImage icon;
  final String url;
  final String duracion;
  final String lugar;
  final String facultad;

  ShowDialog({
    @required this.facultad,
    @required this.nombre,
    @required this.icon,
    @required this.url,
    @required this.duracion,
    @required this.lugar,
  });

  alerta(BuildContext context) {
    final Color colorfont1 = Color(0xff3C3C3B);
    final Color colorfont2 = Color(0xff0088C2);
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          content: Column(
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
                        text: 'Carrera: ',
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
                        text: 'Facultad: ',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "MExtra",
                        )),
                    TextSpan(
                        text: facultad,
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
                        text: 'Duración: ',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "MExtra",
                        )),
                    TextSpan(
                        text: duracion,
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
                        text: 'Ubicación: ',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "MExtra",
                        )),
                    TextSpan(
                        text: lugar,
                        style: TextStyle(
                            fontFamily: "MBlackitalic", color: colorfont2)),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: 50.0,
                height: 50.0,
                child: Image(image: icon),
              ),
            ],
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text(
                'Cerrar',
                style: TextStyle(fontFamily: "MBlackitalic", color: colorfont2),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: Text('Ir al link',
                  style:
                      TextStyle(fontFamily: "MBlackitalic", color: colorfont2)),
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
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo ingresar al link $url';
    }
  }
}
