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

