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
    var carrera;
    var duracion;
    var url;
    var lugar;

    Facultades({
        this.carrera,
        this.duracion,
        this.url,
        this.lugar
        
        
    });

    factory Facultades.fromJson(Map<String, dynamic> parsedjson) => Facultades(
        carrera: parsedjson[""],
        duracion: parsedjson["Años"],
        url: parsedjson["Url"],
        lugar: parsedjson["lugar"],
        
        
    );

   
}
