import 'package:flutter/material.dart';
import 'package:guiae/src/widgets/cards_universidades.dart';

class UniversidadesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color color = Color.fromRGBO(0, 167, 160, 1);

    return Container(
        child: Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        backgroundColor: color,
        title: Text(
          "Universidades",
          style: TextStyle(fontFamily: "MExtra", color: Colors.white),
        ),
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 1],
                  colors: [Colors.white, color])),
          child: _cards()),
    ));
  }

  Widget _cards() {
    return ListView(
      children: <Widget>[
        ListCardsUniversidades(
          alias: "UNCo",
          nombre: 'Unco',
          nombreCompleto: 'Universidad Nacional Del Comahue',
          icon: AssetImage('Asset/logos universidades-01.png'),
        ),
        ListCardsUniversidades(
          alias: "UNRN",
          nombre: 'Unrn',
          nombreCompleto: 'Universidad De Rio Negro',
          icon: AssetImage('Asset/logos universidades-02.png'),
        ),
        ListCardsUniversidades(
          alias: "UTN",
          nombre: 'Utn',
          nombreCompleto: 'Universidad Tecnologica Nacional',
          icon: AssetImage('Asset/logos universidades-03.png'),
        ),
        ListCardsUniversidades(
          alias: "ITP",
          nombre: 'Itp',
          nombreCompleto: 'Instituto Tecnológico de la Patagonia',
          icon: AssetImage('Asset/logos universidades-04.png'),
        ),
        ListCardsUniversidades(
          alias: "UFlo",
          nombre: 'FLORES',
          nombreCompleto: 'Universidad de Flores',
          icon: AssetImage('Asset/logos universidades-05.png'),
        ),
        ListCardsUniversidades(
          alias: "Policia",
          nombre: 'POLICIA',
          nombreCompleto: 'Escuela de la policia Neuquen',
          icon: AssetImage('Asset/logos universidades-06.png'),
        ),
        ListCardsUniversidades(
          alias: "Balseiro",
          nombre: 'Balseiro',
          nombreCompleto: 'Instituto Balseiro',
          icon: AssetImage('Asset/logos universidades-07.png'),
        ),
        ListCardsUniversidades(
          alias: "UCasal",
          nombre: 'Ucasal',
          nombreCompleto: 'Universidad Católolica de Salta',
          icon: AssetImage('Asset/logos universidades-08.png'),
        ),
        ListCardsUniversidades(
          alias: "ENERC",
          nombre: 'Enerc',
          nombreCompleto:
              'Escuela Nacional de Experimentación y Realización Cinematográfica',
          icon: AssetImage('Asset/logos universidades-09.png'),
        ),
        ListCardsUniversidades(
          alias: "Potenciar",
          nombre: 'Potenciar',
          nombreCompleto: 'Fundación Potenciar',
          icon: AssetImage('Asset/logos universidades-10.png'),
        ),
        ListCardsUniversidades(
          alias: "IUPA",
          nombre: 'Iupa',
          nombreCompleto: 'Instituto Universitario Patagónico de Artes',
          icon: AssetImage('Asset/logos universidades-11.png'),
        ),
        ListCardsUniversidades(
          alias: "ISSA",
          nombre: 'Issa',
          nombreCompleto: 'Instituto Superior San Agustin',
          icon: AssetImage('Asset/logos universidades-12.png'),
        ),
        ListCardsUniversidades(
          alias: "CETeC",
          nombre: 'Cetec',
          nombreCompleto: 'Centro de Estudios Terciarios del Comahue',
          icon: AssetImage('Asset/logos universidades-13.png'),
        ),
        ListCardsUniversidades(
          alias: "INPI",
          nombre: 'Inpi',
          nombreCompleto: 'Instituto Neuquino del Profesorado de Inglés',
          icon: AssetImage('Asset/logos universidades-14.png'),
        ),
        ListCardsUniversidades(
          alias: "Si Jolie",
          nombre: 'SJ',
          nombreCompleto:
              'Instituto Si Jolie de Formación Profesional y Educación Superior',
          icon: AssetImage('Asset/logos universidades-15.png'),
        ),
        ListCardsUniversidades(
          alias: "ISIV",
          nombre: 'ISIV',
          nombreCompleto: 'Instituto ISIV Educacíon Superior',
          icon: AssetImage('Asset/logos universidades-16.png'),
        ),
        ListCardsUniversidades(
          alias: "CEDEP",
          nombre: 'CEDEP',
          nombreCompleto:
              'Centro de Estudios para el Desarrollo Económico de la Patagonia',
          icon: AssetImage('Asset/logos universidades-17.png'),
        ),
        ListCardsUniversidades(
          alias: "IFES",
          nombre: 'IFES',
          nombreCompleto: 'Instituto de Formación y Educación Superior',
          icon: AssetImage('Asset/logos universidades-18.png'),
        ),
        ListCardsUniversidades(
          alias: "IFSSA",
          nombre: 'IFSSA',
          nombreCompleto: 'Instituto de Formación Superior',
          icon: AssetImage('Asset/logos universidades-19.png'),
        ),
        ListCardsUniversidades(
          alias: "SENECA",
          nombre: 'SENECA',
          nombreCompleto: 'Instituto terciario SENECA',
          icon: AssetImage('Asset/logos universidades-20.png'),
        ),
        ListCardsUniversidades(
          alias: "Vinculo",
          nombre: 'VINCULO',
          nombreCompleto: 'Escuela de Psicología Social del Neuquén',
          icon: AssetImage('Asset/logos universidades-21.png'),
        ),
        ListCardsUniversidades(
          alias: "Psicogonia",
          nombre: 'PSICOGONIA',
          nombreCompleto: 'Escuela de Psicología Social de la Patagonia',
          icon: AssetImage('Asset/logos universidades-22.png'),
        ),
        ListCardsUniversidades(
          alias: "Cocineros Patagonicos",
          nombre: 'COCINEROS PATAGONICOS',
          nombreCompleto: 'Escuela de Cocineros Patagonicos',
          icon: AssetImage('Asset/logos universidades-23.png'),
        ),
        ListCardsUniversidades(
          alias: "ISIC",
          nombre: 'ISIC',
          nombreCompleto: 'Instituto Superior de Cocina Internacional',
          icon: AssetImage('Asset/logos universidades-24.png'),
        ),
        ListCardsUniversidades(
          alias: "IPES",
          nombre: 'IPES',
          nombreCompleto: 'Instituto Paneamericano de Estudios Superiores',
          icon: AssetImage('Asset/logos universidades-25.png'),
        ),
        ListCardsUniversidades(
          alias: "Habitat",
          nombre: 'HABITAT',
          nombreCompleto: 'Escuela de Diseño en el Habitat',
          icon: AssetImage('Asset/logos universidades-26.png'),
        ),
        ListCardsUniversidades(
          alias: "CPE",
          nombre: 'CPE',
          nombreCompleto: 'Consejo Provincial de Educación',
          icon: AssetImage('Asset/logos universidades-27.png'),
        ),
        ListCardsUniversidades(
          alias: "Siglo 21",
          nombre: 'Siglo21',
          nombreCompleto: 'Universidad Siglo 21',
          icon: AssetImage('Asset/logos universidades-28.jpg'),
        ),
        ListCardsUniversidades(
          alias: "CFP",
          nombre: 'Cfp',
          nombreCompleto: 'Centro de Formación Profesional',
          icon: AssetImage('Asset/logos universidades-29.jpg'),
        ),
        ListCardsUniversidades(
          alias: "Virtual",
          nombre: 'Virtual',
          nombreCompleto: 'Universidades Virtuales',
          icon: AssetImage('Asset/logos universidades-30.jpg'),
        ),
      ],
    );
  }
}
