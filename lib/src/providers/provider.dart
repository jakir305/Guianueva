import 'package:cloud_firestore/cloud_firestore.dart';

class BuscadorProvider {
  List carreras = new List();
  List universidades = ['Unco', 'Balseiro', 'Ucasal'];

  Future<List> cargarCarreras() async {
    for (var i = 0; i < universidades.length; i++) {
      carreras.clear();
      FirebaseFirestore.instance
          .collection(universidades[i])
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((doc) async {
          carreras.add(doc.data()['Carrera']);
        });
      });
    }

    return carreras;
  }
}
