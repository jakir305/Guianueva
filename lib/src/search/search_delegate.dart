import 'package:flutter/material.dart';
import 'package:guiae/models/carreras_model.dart';
import 'package:guiae/screens/home/home_page.dart';
import 'package:guiae/src/providers/carreras_info.dart';
import 'package:guiae/src/providers/universidades_info.dart';
import 'package:provider/provider.dart';

class DataSearch extends SearchDelegate {
  final Map iconos = {
    "Universidad Nacional del Comahue": "Asset/logos universidades-01.png",
    "Instituto Balseiro" : "Asset/logos universidades-07.png",
    "Universidad Nacional De Rio Negro" : "Asset/logos universidades-02.png",
    "Universidad Tecnica Nacional": "Asset/logos universidades-03.png"
  };

  String seleccion = '';

  List<Widget> buildActions(BuildContext context) {
    //Las acciones de nuestra appbar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //Icono a la izquierda del appbar
    return IconButton(
        icon: AnimatedIcon(
          progress: transitionAnimation,
          icon: AnimatedIcons.menu_arrow,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // Crea los resultados que vamos a mostrar
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
     final universidadInfo = Provider.of<UniversidadInfo>(context);
      final carreraInfo = Provider.of<CarreraInfo>(context);
    //Son las sugerencias que se van a mostrar

    if (query.isEmpty) {
      return Container();
    }

    final List<Carrera> listaSugerida = (query.isEmpty)
        ? []
        : carreras
            .where((p) => p.nombre.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: listaSugerida.length,
      itemBuilder: (context, i) {
        return Column(
          children: [
            ListTile(
              leading: Container(
                  width: 50.0,
                  height: 50.0,
                  child: Image(
                    image: AssetImage(iconos[listaSugerida[i].universidad]),
                  )),
              title: Text(
                listaSugerida[i].nombre,
                style: TextStyle(fontSize: 12.0),
              ),
              subtitle: Text(listaSugerida[i].localidad),
              onTap: () {
                close(context, null);
                carreraInfo.carrera = listaSugerida[i].nombre;
                universidadInfo.universidad = listaSugerida[i].iniciales;
                Navigator.pushNamed(context, 'detalles');
              },
            ),
            Divider(
              color: Colors.black,
            )
          ],
        );
      },
    );
  }
}
