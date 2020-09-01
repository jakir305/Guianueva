import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:guiae/src/Utils/text_style.dart';
import 'package:guiae/src/widgets/cards_becas.dart';

class Becasvarias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: GradientAppBar(
        title: Text(
          'Becas',
          style: styleappbar,
        ),
        backgroundColorStart: Colors.tealAccent,
        backgroundColorEnd: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.teal, Colors.white]),
          ),
          padding: EdgeInsets.all(
            10,
          ),
          child: _becasCard()),
    ));
  }

  Widget _becasCard() {
    return ListView(children: <Widget>[
      ListCardsBecas(
        institucion: 'Universidad Nacional de Comahue',
        nombre: "Becas",
        icon: AssetImage('Asset/logos universidades-01.png'),
        color: Colors.blueAccent,
        url: "https://www.uncoma.edu.ar/index.php/becas/",
      ),
      ListCardsBecas(
        institucion: 'Universidad Nacional de Rio Negro',
        nombre: "Ayuda Económica para Carreras Prioritarias",
        icon: AssetImage('Asset/logos universidades-02.png'),
        color: Colors.redAccent,
        url: "https://www.unrn.edu.ar/programas-de-becas",
      ),
      ListCardsBecas(
        institucion: 'Consejo Deliberante de la Ciudad de Neuquén',
        nombre: "Beca Económica",
        icon: AssetImage('Asset/logos universidades-01.png'),
        color: Colors.grey,
        url: "www.cdnqn.gov.ar",
      ),
      ListCardsBecas(
        institucion: 'Ministerio de Educación de la Provincia de Neuquén',
        nombre: "Beca Económica",
        icon: AssetImage('Asset/logos universidades-01.png'),
        color: Colors.blueAccent,
        url: "www.neuquen.edu.ar",
      ),
      ListCardsBecas(
        institucion: 'Compromiso Docente',
        nombre: "Beca Económica",
        icon: AssetImage('Asset/logos universidades-01.png'),
        color: Colors.purple[200],
        url: "http//www.argentina.gob.ar/becasprogresar",
      ),
      ListCardsBecas(
        institucion: 'PRONAFE',
        nombre: "Beca Económica",
        icon: AssetImage('Asset/logos universidades-01.png'),
        color: Colors.greenAccent,
        url:
            "http://www.inet.edu.ar/index.php/programa-nacional-de-formacion-de-enfermeria-pronafe/linea-de-becas-pronafe/",
      ),
      ListCardsBecas(
        institucion: 'COPADE',
        nombre: "Becas de Cursos de Desarrollo Profesional",
        icon: AssetImage('Asset/logos universidades-01.png'),
        color: Colors.orange,
        url:
            "https://www.copade.gob.ar/contenido.aspx?Id=BecasConvocatoriasInternacionales&AspxAutoDetectCookieSupport=1",
      ),
      ListCardsBecas(
        institucion: 'Ministerio de Educación, Cultura, Ciencia y Tecnología',
        nombre: "Beca Económica",
        icon: AssetImage('Asset/logos universidades-01.png'),
        color: Colors.red[200],
        url: "https://www.argentina.gob.ar/educacion/becas",
      ),
      ListCardsBecas(
        institucion: 'Ministerio de Educación, Cultura, Ciencia y Tecnología',
        nombre: "Becas Internacionales",
        icon: AssetImage('Asset/logos universidades-01.png'),
        color: Colors.red[200],
        url: "https://www.argentina.gob.ar/educacion/becas",
      ),
      ListCardsBecas(
        institucion: 'Ministerio de Educación, Cultura, Ciencia y Tecnología',
        nombre: "Programa Casas Argentinas en el Exterior",
        icon: AssetImage('Asset/logos universidades-01.png'),
        color: Colors.red[200],
        url: "https://www.argentina.gob.ar/educacion/becas-internacionales",
      ),
      ListCardsBecas(
        institucion: 'Fundación YPF',
        nombre: "Becas de Grado",
        icon: AssetImage('Asset/logos universidades-01.png'),
        color: Colors.blue[200],
        url: "https://becas.fundacionypf.org.ar",
      ),
      ListCardsBecas(
        institucion: 'Pan American Energy',
        nombre: "Carreras Vinculadas al Petróleo",
        icon: AssetImage('Asset/logos universidades-01.png'),
        color: Colors.orange[200],
        url:
            "https://www.pan-energy.com/Novedades/Paginas/programabecaspae.aspx",
      ),
    ]);
  }
}
