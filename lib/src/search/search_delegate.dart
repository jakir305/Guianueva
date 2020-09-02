import 'package:flutter/material.dart';
import 'package:guiae/models/carreras_model.dart';
import 'package:guiae/screens/home/home_page.dart';
import 'package:guiae/src/providers/carreras_info.dart';
import 'package:guiae/src/providers/universidades_info.dart';
import 'package:provider/provider.dart';

class DataSearch extends SearchDelegate {
  final Map iconos = {
    "Universidad Nacional del Comahue": "Asset/logos universidades-01.png",
    "Instituto Balseiro": "Asset/logos universidades-07.png",
    "Universidad Nacional De Rio Negro": "Asset/logos universidades-02.png",
    "Universidad Tecnica Nacional": "Asset/logos universidades-03.png",
    "Centro de estudios para el desarrollo economico de la patagonia":
        "Asset/logos universidades-17.png",
    "Centro de estudios terciarios del Comahue":
        "Asset/logos universidades-13.png",
    "Escuela de Cocineros Patagónicos": "Asset/logos universidades-23.png",
    "Consejo Provincial de Educación": "Asset/logos universidades-27.png",
    "Escuela Nacional de Experimentación y Realización Cinematográfica":
        "Asset/logos universidades-09.png",
    "Grupo Educativo IFES": "Asset/logos universidades-18.png",
    "Ifssa Instituto De Formación Superior": "Asset/logos universidades-19.png",
    "Instituto Neuquino del Profesorado de Inglés":
        "Asset/logos universidades-14.png",
    "Instituto Panamericano De Estudios Superiores":
        "Asset/logos universidades-25.png",
    "Instituto ISIV Educación Superior": "Asset/logos universidades-16.png",
    "Instituto Superior San Agustín": "Asset/logos universidades-12.png",
    "Instituto Tecnologico Patagonico": "Asset/logos universidades-04.png",
    "Instituto Universitario Patagónico de Artes":
        "Asset/logos universidades-11.png",
    "Escuela de Policia": "Asset/logos universidades-06.png",
    "Fundacion Potenciar": "Asset/logos universidades-10.png",
    "Séneca Instituto Terciario": "Asset/logos universidades-20.png",
    "Universidad Siglo 21": "Asset/logos universidades-28.jpg",
    "Instituto SI JOLIE": "Asset/logos universidades-15.png",
    "Universidad Catolica de Salta": "Asset/logos universidades-08.png",
    "Universidad De Flores": "Asset/logos universidades-05.png",
    "Centros de formacion profecional": "Asset/logos universidades-29.jpg",
    "Escuela de Diseño en el Habitat": "Asset/logos universidades-26.png",
    "Instituto Superior en Cocina Internacional":
        "Asset/logos universidades-24.png",
    "Escuela de Psicología Social de la Patagonia":
        "Asset/logos universidades-22.png",
    "Vínculo - Escuela de Psicología Social del Neuquén":
        "Asset/logos universidades-21.png",
    "Universidades Virtuales": "Asset/logos universidades-30.jpg",
  };

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
