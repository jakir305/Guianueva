import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListCardsBecas extends StatelessWidget {
  final String institucion;
  final String nombre;
  final AssetImage icon;
  final Color color;
  final String url;

  ListCardsBecas({
    @required this.institucion,
    this.nombre,
    this.icon,
    this.color,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(30, 0, 30, 15),
      color: Colors.white,
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: InkWell(
        onTap: () async {
          launch(url);
        },
        child: Row(
          children: <Widget>[
            /* AnimatedContainer(
              duration: Duration(seconds: 1),
              width: 80,
              height: 80,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  clipBehavior: Clip.hardEdge,
                  child: Image(image: icon)),
            ), */
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    nombre,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "MMedium",
                      fontSize: 17.0,
                      color: color,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      institucion,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "MMedium",
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 1.0,
            ),
          ],
        ),
      ),
    );
  }
}
