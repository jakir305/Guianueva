import 'package:flutter/material.dart';
import 'package:guiae/models/carreras_model.dart';
import 'package:guiae/screens/home/home_page.dart';
import 'package:guiae/src/providers/carreras_info.dart';
import 'package:guiae/src/providers/universidades_info.dart';
import 'package:provider/provider.dart';

final Map iconos = {
  "Universidad Nacional del Comahue": "Asset/Unco.png",
  "Instituto Balseiro": "Asset/Balseiro.png",
  "Universidad Nacional De Rio Negro": "Asset/Unrn.png",
  "Universidad Tecnica Nacional": "Asset/Utn.png",
  "Centro de estudios para el desarrollo economico de la patagonia":
      "Asset/Cedep.png",
  "Centro de estudios terciarios del Comahue": "Asset/Cetec.png",
  "Escuela de Cocineros Patagónicos": "Asset/Cocineros.png",
  "Consejo Provincial de Educación": "Asset/Cpe.png",
  "Escuela Nacional de Experimentación y Realización Cinematográfica":
      "Asset/Enerc.png",
  "Grupo Educativo IFES": "Asset/Ifes.png",
  "Ifssa Instituto De Formación Superior": "Asset/Ifssa.png",
  "Instituto Neuquino del Profesorado de Inglés": "Asset/Inpi.png",
  "Instituto Panamericano De Estudios Superiores": "Asset/Ipes.png",
  "Instituto ISIV Educación Superior": "Asset/Isiv.png",
  "Instituto Superior San Agustín": "Asset/Issa.png",
  "Instituto Tecnologico Patagonico": "Asset/Itp.png",
  "Instituto Universitario Patagónico de Artes": "Asset/Iupa.png",
  "Escuela de Policia": "Asset/Policia.png",
  "Fundacion Potenciar": "Asset/Potenciar.png",
  "Séneca Instituto Terciario": "Asset/Seneca.png",
  "Universidad Siglo 21": "Asset/Siglo21.jpg",
  "Instituto SI JOLIE": "Asset/Sijolie.png",
  "Universidad Catolica de Salta": "Asset/Ucasal.png",
  "Universidad De Flores": "Asset/Uflo.png",
  "Centros de formacion profecional": "Asset/Cfp.jpg",
  "Escuela de Diseño en el Habitat": "Asset/Edh.png",
  "Instituto Superior en Cocina Internacional": "Asset/Isci.png",
  "Escuela de Psicología Social de la Patagonia": "Asset/Epsp.png",
  "Vínculo - Escuela de Psicología Social del Neuquén": "Asset/Vinculo.png",
  "Universidades Virtuales": "Asset/Virtual.jpg",
};

class DataSearch extends SearchDelegate {
  String seleccion = '';

  List<Widget> buildActions(BuildContext context) {
    //Las acciones de nuestra appbar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //Icono a la izquierda del appbar
    return IconButton(
        icon: AnimatedIcon(
          progress: transitionAnimation,
          icon: AnimatedIcons.menu_arrow,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // Crea los resultados que vamos a mostrar
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final universidadInfo = Provider.of<UniversidadInfo>(context);
    final carreraInfo = Provider.of<CarreraInfo>(context);
    //Son las sugerencias que se van a mostrar

    if (query.isEmpty) {
      return Container();
    }

    final List<Carrera> listaSugerida = (query.isEmpty)
        ? []
        : carreras
            .where((p) => p.nombre.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: listaSugerida.length,
      itemBuilder: (context, i) {
        return Column(
          children: [
            ListTile(
              leading: Container(
                  width: 50.0,
                  height: 50.0,
                  child: Image(
                    image: AssetImage(iconos[listaSugerida[i].universidad]),
                  )),
              title: Text(
                listaSugerida[i].nombre,
                style: TextStyle(fontSize: 12.0),
              ),
              subtitle: (() {
                //Verificacion de titulo
                if (listaSugerida[i].localidad != null) {
                  return Text(listaSugerida[i].localidad);
                } else {
                  return Container();
                }
              }()),

              /* Text(listaSugerida[i].localidad), */
              onTap: () {
                close(context, null);
                carreraInfo.carrera = listaSugerida[i].nombre;
                universidadInfo.universidad = listaSugerida[i].iniciales;
                Navigator.pushNamed(context, 'detalles');
              },
            ),
            Divider(
              color: Colors.black,
            )
          ],
        );
      },
    );
  }
}
