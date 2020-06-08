import 'package:flutter/material.dart';

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