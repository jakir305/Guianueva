import 'package:flutter/material.dart';
import 'package:guiae/models/carreras_model.dart';
import 'package:guiae/screens/home/home_page.dart';

class DataSearch extends SearchDelegate {
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
    return Container(
      child: Center(child: Text(seleccion)),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
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
        return ListTile(
          leading: Icon(Icons.movie),
          title: Text(listaSugerida[i].nombre),
          onTap: () {
            seleccion = listaSugerida[i].nombre;
            showResults(context);
          },
        );
      },
    );
  }
}
