import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:guiae/models/carreras_model.dart';

class BuscadorProvider {
  final List<Carrera> carreras = new List();

  List universidades = [
    'Unco',
    'Balseiro',
    'Ucasal',
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
                carreras.add(carrera);
                print(carrera.nombre);
              }));
    }

    return carreras;
  }
}
