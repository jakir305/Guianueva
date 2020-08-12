import 'package:flutter/material.dart';
import 'package:guiae/src/widgets/cards_universidades.dart';

class UniversidadesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Universidades'),
        backgroundColor: Colors.tealAccent[700],
        elevation: 0.0,
      ),
      body: Container(padding: EdgeInsets.all(10), child: _cards()),
    ));
  }

  Widget _cards() {
    return ListView(
      children: <Widget>[
        ListCardsUniversidades(
          nombre: 'Unco',
          nombreCompleto: 'Universidad Del Comahue',
          icon: AssetImage('Asset/unco.png'),
        ),
        ListCardsUniversidades(
          nombre: 'Unrn',
          nombreCompleto: 'Universidad De Rio Negro',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'Utn',
          nombreCompleto: 'Universidad Tecnologica Nacional',
          icon: AssetImage('Asset/utn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'Cpe',
          nombreCompleto: 'Cpe',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'Itp',
          nombreCompleto: 'Instituto Tecnológico de la Patagonia',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'FLORES',
          nombreCompleto: 'Universidad de Flores',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'POLICIA',
          nombreCompleto: 'Escuela de la policia Neuquen',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'Balseiro',
          nombreCompleto: 'Instituto Balseiro',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'Ucasal',
          nombreCompleto: 'Universidad Católolica de Salta',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'Enerc',
          nombreCompleto:'Escuela Nacional de Experimentación y Realización Cinematográfica',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'Potenciar',
          nombreCompleto: 'Fundación Potenciar',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'Iupa',
          nombreCompleto: 'Instituto Universitario Patagónico de Artes',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'Issa',
          nombreCompleto: 'Instituto Superior San Agustin',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'Cetec',
          nombreCompleto: 'Centro de Estudios Terciarios del Comahue',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'Inpi',
          nombreCompleto: 'Instituto Neuquino del Profesorado de Inglés',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'SJ',
          nombreCompleto: 'Instituto Si Jolie de Formación Profesional y Educación Superior',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'CPE',
          nombreCompleto: 'Consejo Provincial de Educación',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'CPE',
          nombreCompleto: 'Consejo Provincial de Educación',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'ISIV',
          nombreCompleto: 'Instituto ISIV Educacíon Superior',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'CEDEP',
          nombreCompleto: 'Centro de Estudios para el Desarrollo Económico de la Patagonia',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'IFES',
          nombreCompleto: 'Instituto de Formación y Educación Superior',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'IFSSA',
          nombreCompleto: 'Instituto de Formación Superior',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'SENECA',
          nombreCompleto: 'Instituto terciario SENECA',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'VINCULO',
          nombreCompleto: 'Escuela de Psicología Social del Neuquén',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'PSICOGONIA',
          nombreCompleto: 'Escuela de Psicología Social de la Patagonia',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'COCINEROS PATAGONICOS',
          nombreCompleto: 'Escuela de Cocineros Patagonicos',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'ISIC',
          nombreCompleto: 'Instituto Superior de Cocina Internacional',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'IPES',
          nombreCompleto: 'Instituto Paneamericano de Estudios Superiores',
          icon: AssetImage('Asset/unrn.png'),
        ),
        ListCardsUniversidades(
          nombre: 'HABITAT',
          nombreCompleto: 'Escuela de Diseño en el Habitat',
          icon: AssetImage('Asset/unrn.png'),
        ),
      ],
    );
  }
}
