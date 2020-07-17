import 'package:flutter/material.dart';

class DetallesInfo with ChangeNotifier {
  String _carrera = '';

  get carrera {
    return _carrera;
  }

  set carrera(String nombre) {
    this._carrera = nombre;
    notifyListeners();
  }
}
