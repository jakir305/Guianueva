import 'package:flutter/material.dart';

class Datacarreras extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    // acciones  de nuestro appbar
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Iconos a la izquierda del appbar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Crea los resultados que se muestran
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Sugerencias
    return Container();
  }
}
