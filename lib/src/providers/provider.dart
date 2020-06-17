import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:guiae/src/providers/carreras_info.dart';
import 'package:guiae/src/providers/detalles_info.dart';
import 'package:guiae/src/providers/universidades_info.dart';
import 'package:provider/provider.dart';
import 'models.dart';


class UniversidadesProvider {
final dbRef = FirebaseDatabase.instance.reference();

String nombreUniversidad = '';
String nombreFacultad = '';
String detalleInfo = '';


Future<List<Universidad>> cargarFacultades(BuildContext context) async {
  Map _resp;
  final universidadInfo = Provider.of<UniversidadInfo>(context);
  nombreUniversidad = universidadInfo.universidad;
  await dbRef.child(nombreUniversidad).once().then((DataSnapshot data){
   _resp = (data.value);
  });
  
  final List<Universidad> universidades = new List();
  
  final Map decodedData = _resp;
  
    if (decodedData == null ) return [];

    decodedData.forEach((nombre , facultad) { 
      
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
  await dbRef.child(nombreUniversidad).child(nombreFacultad).once().then((DataSnapshot data){
  _resp = (data.value);
  });
  


  final  decodedData = _resp;

    if (decodedData == null ) return [];

    decodedData.forEach((nombre , facultad,) { 
    Facultades facultad1 = new Facultades(carrera:nombre,duracion: facultad['Años']);
    
     print(facultad);
  
  
       
    
      carreras.add(facultad1);

    });
  
  return carreras;
  }


  Future<List<Carreras>> cargarDetalles(BuildContext context) async {
  var _resp;
  final universidadInfo = Provider.of<UniversidadInfo>(context, listen: false);
  final carreraInfo     = Provider.of<CarreraInfo>(context, listen: false);
  final detallesInfo    = Provider.of<DetallesInfo>(context, listen: false);
  detalleInfo           = detallesInfo.carrera;
  nombreUniversidad     = universidadInfo.universidad;
  nombreFacultad        = carreraInfo.facultad;
  final List<Carreras> carreras = new List();
  await dbRef.child(nombreUniversidad).child(nombreFacultad).child(detalleInfo).once().then((DataSnapshot data){
  _resp = (data.value);
  
  });
  


  final  decodedData = _resp;
  

    if (decodedData == null ) return null;

    decodedData.forEach((dato1,dato2) { 
      
     Carreras carrera = new Carreras(
       duracion:dato2.toString(),
     );
     carreras.add(carrera);
     
      
    });
  return carreras;
  }

  
  
  }