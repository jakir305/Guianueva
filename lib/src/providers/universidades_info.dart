import 'package:flutter/material.dart';

class UniversidadInfo with ChangeNotifier {

  String _universidad = 'Unco';

  
  get universidad {
    return _universidad;
  }

  set universidad (String nombre){
    this._universidad = nombre;

    notifyListeners();
  }

}

class FacultadInfo with ChangeNotifier {

  String _facultad = '';

  
  get facultad {
    return _facultad;
  }

  set facultad (String nombre){
    this._facultad = nombre;

    notifyListeners();
  }

}