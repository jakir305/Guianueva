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

    Facultades({
        this.carrera
        
    });

    factory Facultades.fromJson(Map<String, dynamic> json) => Facultades(
        carrera: json["carrera"],
        
    );

   
}