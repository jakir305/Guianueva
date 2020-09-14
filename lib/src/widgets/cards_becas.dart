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
      height: _screenSize.width * 0.25,
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
                AutoSizeText(
                  nombre,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "MBold",
                    fontWeight: FontWeight.w700,
                    color: colorfont,
                  ),
                  minFontSize: 15.0,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                AutoSizeText(
                  institucion,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "MBold",
                    fontWeight: FontWeight.w700,
                    color: colorfont2,
                  ),
                  maxFontSize: 12.0,
                  minFontSize: 10.0,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
