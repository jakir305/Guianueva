

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:guiae/src/providers/carreras_info.dart';
import 'package:guiae/src/providers/models.dart';
import 'package:guiae/src/providers/universidades_info.dart';
import 'package:provider/provider.dart';
import 'models.dart';


class UniversidadesProvider {
final dbRef = FirebaseDatabase.instance.reference();

String nombreUniversidad = '';
String nombreFacultad = '';
String detalleInfo = '';
Map<dynamic,dynamic> temp;


Future<List<Universidad>> cargarFacultades(BuildContext context) async {
  Map _resp;
  final universidadInfo = Provider.of<UniversidadInfo>(context);
  nombreUniversidad = universidadInfo.universidad;
  await dbRef.child(nombreUniversidad).once().then((DataSnapshot data){
   _resp = (data.value);
  });
  
  final List<Universidad> universidades = new List();
  
  
  
    if (_resp == null ) return [];

    _resp.forEach((nombre , facultad) { 
      
      Universidad universidad = new Universidad(facultad:nombre);
      universidades.add(universidad);
    });
    
  return universidades;
  }

  Future<List<Facultades>> cargarCarreras(BuildContext context) async {
  var _resp;
  final universidadInfo = Provider.of<UniversidadInfo>(context);
  final carreraInfo     = Provider.of<CarreraInfo>(context);
  nombreUniversidad     = universidadInfo.universidad;
  nombreFacultad        = carreraInfo.facultad;
  final List<Facultades> carreras = new List();
  Facultades facultad1;
  await dbRef.child(nombreUniversidad).child(nombreFacultad).once().then((DataSnapshot data){
  _resp = (data.value);
  });
  

    if (_resp == null ) return [];

    _resp.forEach((uno , dos) {
    facultad1 = Facultades(carrera:uno,duracion: dos['Años'],url: dos['Url'],lugar: dos['Lugar']);
    print(facultad1.url);
    
     
    carreras.add(facultad1);
    
    });


  return carreras;
  }


  

  
  
  }