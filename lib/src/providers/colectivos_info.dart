import 'package:flutter/material.dart';

class ColectivosInfo with ChangeNotifier {
  String _colectivos = '';

  get colectivos {
    return _colectivos;
  }

  set colectivos(String nombre) {
    this._colectivos = nombre;
    notifyListeners();
  }
}
