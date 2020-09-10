import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListCardsBecas extends StatelessWidget {
  final String institucion;
  final String nombre;
  final String url;

  ListCardsBecas({
    @required this.institucion,
    this.nombre,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    final Color colorfont = Color.fromRGBO(87, 88, 90, 1);
    final Color colorfont2 = Color.fromRGBO(117, 118, 120, 1);

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
      height: 100.0,
      child: Card(
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
                Text(
                  nombre,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "MBold",
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    color: colorfont,
                  ),
                ),
                Text(
                  institucion,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "MSemi",
                    fontSize: 14,
                    color: colorfont2,
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
