import 'package:auto_size_text/auto_size_text.dart';
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
    final _screenSize = MediaQuery.of(context).size;
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
      height: _screenSize.width * 0.23,
      width: double.infinity,
      child: Card(
        color: Colors.white,
        elevation: 20.0,
        child: InkWell(
          onTap: () async {
            launch(url);
          },
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: AutoSizeText(
                    institucion,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "MBold",
                      color: colorfont2,
                    ),
                    maxFontSize: 18.0,
                    minFontSize: 15.0,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: AutoSizeText(
                    nombre,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "MBold",
                      fontWeight: FontWeight.w700,
                      color: colorfont,
                    ),
                    maxFontSize: 14.0,
                    minFontSize: 12.0,
                    maxLines: 1,
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
