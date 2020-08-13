import 'package:flutter/material.dart';
import 'package:guiae/src/widgets/cards_universidades.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class UniversidadesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: GradientAppBar(
        title: Text(
          "Universidades",
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColorStart: Colors.blueAccent,
        backgroundColorEnd: Colors.white,
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.white])),
          padding: EdgeInsets.all(10),
          child: _cards()),
    ));
  }

  Widget _cards() {
    return ListView(
      children: <Widget>[
        ListCardsUniversidades(
          alias: "UNCO",
          nombre: 'Unco',
          nombreCompleto: 'Universidad Del Comahue',
          icon: AssetImage('Asset/unco.png'),
        ),
        ListCardsUniversidades(
          alias: "UNRN",
          nombre: 'Unrn',
          nombreCompleto: 'Universidad De Rio Negro',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "UTN",
          nombre: 'Utn',
          nombreCompleto: 'Universidad Tecnologica Nacional',
          icon: AssetImage('Asset/utn.png'),
        ),
        ListCardsUniversidades(
          alias: "ITP",
          nombre: 'Itp',
          nombreCompleto: 'Instituto Tecnológico de la Patagonia',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "UFLO",
          nombre: 'FLORES',
          nombreCompleto: 'Universidad de Flores',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "Policia",
          nombre: 'POLICIA',
          nombreCompleto: 'Escuela de la policia Neuquen',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "BALSEIRO",
          nombre: 'Balseiro',
          nombreCompleto: 'Instituto Balseiro',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "UCASAL",
          nombre: 'Ucasal',
          nombreCompleto: 'Universidad Católolica de Salta',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "ENERC",
          nombre: 'Enerc',
          nombreCompleto:
              'Escuela Nacional de Experimentación y Realización Cinematográfica',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "POTENCIAR",
          nombre: 'Potenciar',
          nombreCompleto: 'Fundación Potenciar',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "IUPA",
          nombre: 'Iupa',
          nombreCompleto: 'Instituto Universitario Patagónico de Artes',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "ISSA",
          nombre: 'Issa',
          nombreCompleto: 'Instituto Superior San Agustin',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "CETEC",
          nombre: 'Cetec',
          nombreCompleto: 'Centro de Estudios Terciarios del Comahue',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "INPI",
          nombre: 'Inpi',
          nombreCompleto: 'Instituto Neuquino del Profesorado de Inglés',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "SI JOLIE",
          nombre: 'SJ',
          nombreCompleto:
              'Instituto Si Jolie de Formación Profesional y Educación Superior',
          icon: AssetImage('Asset/unrn.png'),
        ),
        // ListCardsUniversidades(
        //   alias: "CPE",
        //   nombre: 'CPE',
        //   nombreCompleto: 'Consejo Provincial de Educación',
        //   icon: AssetImage('Asset/unrn.png'),
        // ),
        ListCardsUniversidades(
          alias: "ISIV",
          nombre: 'ISIV',
          nombreCompleto: 'Instituto ISIV Educacíon Superior',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "CEDEP",
          nombre: 'CEDEP',
          nombreCompleto:
              'Centro de Estudios para el Desarrollo Económico de la Patagonia',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "IFES",
          nombre: 'IFES',
          nombreCompleto: 'Instituto de Formación y Educación Superior',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "IFSSA",
          nombre: 'IFSSA',
          nombreCompleto: 'Instituto de Formación Superior',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "SENECA",
          nombre: 'SENECA',
          nombreCompleto: 'Instituto terciario SENECA',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "VINCULO",
          nombre: 'VINCULO',
          nombreCompleto: 'Escuela de Psicología Social del Neuquén',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "PSICOGONIA",
          nombre: 'PSICOGONIA',
          nombreCompleto: 'Escuela de Psicología Social de la Patagonia',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "COCINEROS PATAGONICOS",
          nombre: 'COCINEROS PATAGONICOS',
          nombreCompleto: 'Escuela de Cocineros Patagonicos',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "ISIC",
          nombre: 'ISIC',
          nombreCompleto: 'Instituto Superior de Cocina Internacional',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "IPES",
          nombre: 'IPES',
          nombreCompleto: 'Instituto Paneamericano de Estudios Superiores',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "HABITAT",
          nombre: 'HABITAT',
          nombreCompleto: 'Escuela de Diseño en el Habitat',
          icon: AssetImage('Asset/unrn.png'),
        ),
      ],
    );
  }
}
