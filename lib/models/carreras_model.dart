class Carreras {
  List<Carrera> items = new List();

  Carreras();

  Carreras.fromFirebase(List<dynamic> carreraList) {
    if (carreraList == null) return;

    for (var item in carreraList) {
      final carrera = new Carrera.fromFirebaseMap(item);
      items.add(carrera);
    }
  }
}

class Carrera {
  List<Carrera> items = new List();

  String nombre;
  String duracion;
  String facultad;
  String url;
  String localidad;

  Carrera(
      {this.nombre, this.facultad, this.duracion, this.localidad, this.url});

  Carrera.fromFirebaseMap(Map<String, dynamic> carrera) {
    nombre = carrera['Carrera'];
    duracion = carrera['Descripción'];
    facultad = carrera['Faculad'];
    url = carrera['Url'];
    localidad = carrera['Localidad'];
  }
}
