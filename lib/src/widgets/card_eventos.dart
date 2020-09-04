import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListCardsEventos extends StatelessWidget {
  final String descripcion1;
  final String descripcion2;
  final String descripcion3;
  final String nombre;
  final String url;

  ListCardsEventos({
    this.descripcion1,
    this.descripcion2,
    this.descripcion3,
    this.nombre,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    final Color colorfont = Color.fromRGBO(87, 88, 90, 1);
    final Color colorfont2 = Color.fromRGBO(117, 118, 120, 1);

    return Card(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      color: Colors.white,
      elevation: 20.0,
      child: InkWell(
        onTap: () async {
          launch(url);
        },
        child: Container(
          height: _screenSize.height * 0.11,
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
                child: Text(
                  nombre,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "MBold",
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                    color: colorfont,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "MItalic",
                      fontWeight: FontWeight.w900,
                      color: Color.fromRGBO(228, 67, 128, 1),
                    ),
                    children: <TextSpan>[
                      TextSpan(text: descripcion1),
                      TextSpan(text: "-"),
                      TextSpan(
                          text: descripcion2,
                          style: TextStyle(
                              fontFamily: "MBlackitalic",
                              fontWeight: FontWeight.w900)),
                      TextSpan(text: "-"),
                      TextSpan(text: descripcion3),
                    ]),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
