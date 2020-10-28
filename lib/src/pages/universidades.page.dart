import 'package:flutter/material.dart';
import 'package:guiae/src/widgets/cards_universidades.dart';
import 'package:guiae/src/search/search_delegate.dart';

class UniversidadesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color color = Color.fromRGBO(11, 174, 212, 1);

    return Container(
        child: Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
              showSearch(context: context, delegate: DataSearch());
            },
          )
        ],
        backgroundColor: color,
        title: Text(
          "Universidades",
          style: TextStyle(fontFamily: "MBold", color: Colors.white),
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
          icon: AssetImage('Asset/Unco.png'),
        ),
        ListCardsUniversidades(
          alias: "UNRN",
          nombre: 'Unrn',
          nombreCompleto: 'Universidad De Rio Negro',
          icon: AssetImage('Asset/Unrn.png'),
        ),
        ListCardsUniversidades(
          alias: "UTN",
          nombre: 'Utn',
          nombreCompleto: 'Universidad Tecnologica Nacional',
          icon: AssetImage('Asset/Utn.png'),
        ),
        ListCardsUniversidades(
          alias: "ITP",
          nombre: 'Itp',
          nombreCompleto: 'Instituto Tecnológico de la Patagonia',
          icon: AssetImage('Asset/Itp.png'),
        ),
        ListCardsUniversidades(
          alias: "UFlo",
          nombre: 'Uflo',
          nombreCompleto: 'Universidad de Flores',
          icon: AssetImage('Asset/Uflo.png'),
        ),
        ListCardsUniversidades(
          alias: "Policia",
          nombre: 'Policia',
          nombreCompleto: 'Escuela de la policia Neuquen',
          icon: AssetImage('Asset/Policia.png'),
        ),
        ListCardsUniversidades(
          alias: "Balseiro",
          nombre: 'Balseiro',
          nombreCompleto: 'Instituto Balseiro',
          icon: AssetImage('Asset/Balseiro.png'),
        ),
        ListCardsUniversidades(
          alias: "UCasal",
          nombre: 'Ucasal',
          nombreCompleto: 'Universidad Católolica de Salta',
          icon: AssetImage('Asset/Ucasal.png'),
        ),
        ListCardsUniversidades(
          alias: "ENERC",
          nombre: 'Enerc',
          nombreCompleto:
              'Escuela Nacional de Experimentación y Realización Cinematográfica',
          icon: AssetImage('Asset/Enerc.png'),
        ),
        ListCardsUniversidades(
          alias: "Potenciar",
          nombre: 'Potenciar',
          nombreCompleto: 'Fundación Potenciar',
          icon: AssetImage('Asset/Potenciar.png'),
        ),
        ListCardsUniversidades(
          alias: "IUPA",
          nombre: 'Iupa',
          nombreCompleto: 'Instituto Universitario Patagónico de Artes',
          icon: AssetImage('Asset/Iupa.png'),
        ),
        ListCardsUniversidades(
          alias: "ISSA",
          nombre: 'Issa',
          nombreCompleto: 'Instituto Superior San Agustin',
          icon: AssetImage('Asset/Issa.png'),
        ),
        ListCardsUniversidades(
          alias: "CETeC",
          nombre: 'Cetec',
          nombreCompleto: 'Centro de Estudios Terciarios del Comahue',
          icon: AssetImage('Asset/Cetec.png'),
        ),
        ListCardsUniversidades(
          alias: "INPI",
          nombre: 'Inpi',
          nombreCompleto: 'Instituto Neuquino del Profesorado de Inglés',
          icon: AssetImage('Asset/Inpi.png'),
        ),
        ListCardsUniversidades(
          alias: "Si Jolie",
          nombre: 'Sijolie',
          nombreCompleto:
              'Instituto Si Jolie de Formación Profesional y Educación Superior',
          icon: AssetImage('Asset/Sijolie.png'),
        ),
        ListCardsUniversidades(
          alias: "ISIV",
          nombre: 'Isiv',
          nombreCompleto: 'Instituto ISIV Educacíon Superior',
          icon: AssetImage('Asset/Isiv.png'),
        ),
        ListCardsUniversidades(
          alias: "CEDEP",
          nombre: 'Cedep',
          nombreCompleto:
              'Centro de Estudios para el Desarrollo Económico de la Patagonia',
          icon: AssetImage('Asset/Cedep.png'),
        ),
        ListCardsUniversidades(
          alias: "IFES",
          nombre: 'Ifes',
          nombreCompleto: 'Instituto de Formación y Educación Superior',
          icon: AssetImage('Asset/Ifes.png'),
        ),
        ListCardsUniversidades(
          alias: "IFSSA",
          nombre: 'Ifssa',
          nombreCompleto: 'Instituto de Formación Superior',
          icon: AssetImage('Asset/Ifssa.png'),
        ),
        ListCardsUniversidades(
          alias: "SENECA",
          nombre: 'Seneca',
          nombreCompleto: 'Instituto terciario SENECA',
          icon: AssetImage('Asset/Seneca.png'),
        ),
        ListCardsUniversidades(
          alias: "Vinculo",
          nombre: 'Vinculo',
          nombreCompleto: 'Escuela de Psicología Social del Neuquén',
          icon: AssetImage('Asset/Vinculo.png'),
        ),
        ListCardsUniversidades(
          alias: "Psicogonia",
          nombre: 'Epsp',
          nombreCompleto: 'Escuela de Psicología Social de la Patagonia',
          icon: AssetImage('Asset/Epsp.png'),
        ),
        ListCardsUniversidades(
          alias: "Cocineros Patagonicos",
          nombre: 'Cocineros',
          nombreCompleto: 'Escuela de Cocineros Patagonicos',
          icon: AssetImage('Asset/Cocineros.png'),
        ),
        ListCardsUniversidades(
          alias: "ISCI",
          nombre: 'Isci',
          nombreCompleto: 'Instituto Superior de Cocina Internacional',
          icon: AssetImage('Asset/Isci.png'),
        ),
        ListCardsUniversidades(
          alias: "IPES",
          nombre: 'Ipes',
          nombreCompleto: 'Instituto Paneamericano de Estudios Superiores',
          icon: AssetImage('Asset/Ipes.png'),
        ),
        ListCardsUniversidades(
          alias: "Habitat",
          nombre: 'Edh',
          nombreCompleto: 'Escuela de Diseño en el Habitat',
          icon: AssetImage('Asset/Edh.png'),
        ),
        ListCardsUniversidades(
          alias: "CPE",
          nombre: 'Cpe',
          nombreCompleto: 'Consejo Provincial de Educación',
          icon: AssetImage('Asset/Cpe.png'),
        ),
        ListCardsUniversidades(
          alias: "Siglo 21",
          nombre: 'Siglo21',
          nombreCompleto: 'Universidad Siglo 21',
          icon: AssetImage('Asset/Siglo21.png'),
        ),
        ListCardsUniversidades(
          alias: "CFP",
          nombre: 'Cpf',
          nombreCompleto: 'Centro de Formación Profesional',
          icon: AssetImage('Asset/Cpf.png'),
        ),
        ListCardsUniversidades(
          alias: "Virtual",
          nombre: 'Virtual',
          nombreCompleto: 'Universidades Virtuales',
          icon: AssetImage('Asset/Virtual.png'),
        ),
      ],
    );
  }
}
