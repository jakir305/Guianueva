import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _ColectivosProvider {
  List<dynamic> opciones = [];

  _ColectivosProvider() {
    cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/colectivos.json');
    Map dataMap = json.decode(resp);
    opciones = (dataMap['rutas']);
    return opciones;
  }
}

final colectivosProvider = new _ColectivosProvider();
