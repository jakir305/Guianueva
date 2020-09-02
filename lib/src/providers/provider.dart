import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:guiae/models/carreras_model.dart';

class BuscadorProvider {
  final List<Carrera> carreras = new List();

  List universidades = [
    'Unco',
    'Balseiro',
    'Unrn',
    'Utn',
    'Cedep',
    'Cetec',
    'Cocineros',
    'Cpe',
    'Enerc',
    'Ifes',
    'Ifssa',
    'Inpi',
    'Ipes',
    'Isiv',
    'Issa',
    'Itp',
    'Iupa',
    'Policia',
    'Potenciar',
    "Seneca",
    "Siglo21",
    "Sijolie",
    "Ucasal",
    "Uflo",
    "Cfp",
    "Edh",
    "Isci",
    "Epsp",
    "Vinculo",
    "Virtual",
  ];

  cargarBuscador() {
    for (var i = 0; i < universidades.length; i++) {
      FirebaseFirestore.instance
          .collection(universidades[i])
          .snapshots()
          .listen((data) => data.docs.forEach((doc) async {
                final Carrera carrera = new Carrera();
                carrera.nombre = await doc.data()["Carrera"];
                carrera.duracion = await doc.data()["Descripción"];
                carrera.facultad = await doc.data()["Facultad"];
                carrera.url = await doc.data()["Url"];
                carrera.localidad = await doc.data()["Localidad"];
                carrera.universidad = await doc.data()["Universidad"];
                carrera.iniciales = await doc.data()["Iniciales"];
                carreras.add(carrera);
              }));
    }

    return carreras;
  }
}
