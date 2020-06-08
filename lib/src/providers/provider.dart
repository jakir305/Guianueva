import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:guiae/src/providers/universidades_info.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import 'models.dart';


class UniversidadesProvider {

String nombreUniversidad = '';

Future<List<Universidad>> cargarFacultades(BuildContext context) async {
  final String _url = 'https://guiaestudiantilnaj.firebaseio.com/';
  
  final universidadInfo = Provider.of<UniversidadInfo>(context);
  nombreUniversidad = universidadInfo.universidad;
  final url = '$_url/$nombreUniversidad.json';
  final resp = await http.get(url);
  final List<Universidad> universidades = new List();
  

  
  final Map<String,dynamic> decodedData = json.decode(resp.body);

    if (decodedData == null ) return [];

    decodedData.forEach((nombre , facultad) { 
      
      Universidad universidad = new Universidad(facultad:nombre);
      universidades.add(universidad);
    });
    
  return universidades;
  }

  Future<List<Facultades>> cargarCarreras(BuildContext context) async {
  final String _url = 'https://guiaestudiantilnaj.firebaseio.com/';
  
  final url = '$_url/$nombreUniversidad/Facultad%20de%20Ingeniería%20.json';
  final resp = await http.get(url);
  final List<Facultades> universidades = new List();
  

  
  final Map<String,dynamic> decodedData = json.decode(resp.body);

    if (decodedData == null ) return [];

    decodedData.forEach((nombre , facultad) { 
      
     Facultades facultad1 = new Facultades(carrera:nombre);
      universidades.add(facultad1);
    });
    print(universidades);
  return universidades;
  }
  
  
  
  
  
  
  
  }