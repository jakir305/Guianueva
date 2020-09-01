import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:guiae/models/carreras_model.dart';

class BuscadorProvider {
  final List<Carrera> carreras = new List();


  /* 'Balseiro', 'Cedep','Cetec','Cfp','Cocineros','Cocineros','Cpe','Edh','Enerc','Epsp','Ifes','Ifssa'
    ,'Inpi','Ipes','Isci','Isiv','Issa','Itp','Iupa','Policia','Potenciar','Seneca','Siglo21','Sijolie','Trasporte','Ucasal','Uflo','Unco','Unrn','Utn','Vinculo'
 */  List universidades = ['Unco', 'Balseiro','Unrn','Utn'   
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
