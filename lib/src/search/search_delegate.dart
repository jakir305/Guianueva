import 'package:flutter/material.dart';
import 'package:guiae/src/providers/provider.dart';

class DataSearch extends SearchDelegate {
  BuscadorProvider buscador = new BuscadorProvider();
  String seleccion = '';

  @override
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
    //Son las sugerencias que se van a mostrar

    if (query.isEmpty) {
      return Container();
    }
    final listaSugerida = (query.isEmpty)
        ? []
        : buscador.carreras
            .where((p) => p.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return FutureBuilder(
      future: buscador.cargarCarreras(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        print(buscador.carreras);

        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: listaSugerida.length,
            itemBuilder: (context, i) {
              return ListTile(
                leading: Icon(Icons.movie),
                title: Text(listaSugerida[i]),
                onTap: () {},
              );
            },
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
