import 'package:flutter/material.dart';
import 'package:guiae/src/Utils/text_style.dart';
import 'package:guiae/src/providers/universidades_info.dart';
import 'package:provider/provider.dart';

class ListCardsUniversidades extends StatelessWidget {
  final String nombre;
  final String alias;
  final String nombreCompleto;
  final AssetImage icon;

  ListCardsUniversidades({
    @required this.nombre,
    @required this.alias,
    @required this.nombreCompleto,
    @required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    final universidadInfo = Provider.of<UniversidadInfo>(context);
    return Card(
      margin: EdgeInsets.fromLTRB(25, 20, 25, 0),
      color: Colors.white,
      elevation: 40,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: InkWell(
        onTap: () {
          universidadInfo.universidad = nombre;
          Navigator.pushNamed(context, 'carreras');
        },
        child: Row(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  clipBehavior: Clip.hardEdge,
                  child: Image(image: icon)),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    alias,
                    style: styleNombreUniver,
                    textAlign: TextAlign.center,
                  ),
                  Text(nombreCompleto,
                      style: styleNombreComUniver, textAlign: TextAlign.center),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
