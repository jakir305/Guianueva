import 'dart:convert';

Universidad universidadesFromJson(String str) => Universidad.fromJson(json.decode(str));



class Universidad {
    String facultad;

    Universidad({
        this.facultad
        
    });

    factory Universidad.fromJson(Map<String, dynamic> json) => Universidad(
        facultad: json["facultad"],
        
    );

   
}

class Facultades {
    String carrera;
    var duracion;
    String url;

    Facultades({
        this.carrera,
        this.duracion,
        this.url,
        
    });

    factory Facultades.fromJson(Map<String, dynamic> json) => Facultades(
        carrera: json["carrera"],
        duracion: json["duracion"],
        url: json["url"],
        
    );

   
}
class Carreras {
    String lugar;
    String link;
    String duracion;

    Carreras({
        this.lugar,
        this.link,
        this.duracion,
        
    });

    factory Carreras.fromJson(Map<String, dynamic> json) => Carreras(
        lugar: json[""],
        link: json[""],
        duracion: json[""],
        
    );

   
}