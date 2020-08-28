import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:guiae/models/carreras_model.dart';

class BuscadorProvider {
  List<Carrera> carreras = new List();
  Carrera carrera = new Carrera();

  List universidades = [
    'Unco',
    'Balseiro',
    'Ucasal',
  ];

  Future<List> cargarCarreras() async {
    for (var i = 0; i < universidades.length; i++) {
      await FirebaseFirestore.instance
          .collection(universidades[i])
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((doc) async {
          carrera.nombre = await (doc.data()['Carrera']);
          carreras.add(carrera);
          print(carrera);
        });
      });
    }

    return carreras;
  }
}
