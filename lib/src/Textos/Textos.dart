import 'package:flutter/cupertino.dart';

final color = const Color(0xFF00A7A1);
var acercaDeNosotros = new RichText(
  textAlign: TextAlign.center,
  text: new TextSpan(
    // Note: Styles for TextSpans must be explicitly defined.
    // Child text spans will inherit styles from parent
    style: TextStyle(
      fontSize: 15.0,
      color: color,
      fontFamily: "MMedium",
    ),
    children: <TextSpan>[
      TextSpan(text: 'En este nuevo formato la '),
      TextSpan(
          text: 'Subsecretaría de Juventud ',
          style: TextStyle(fontFamily: "MExtra")),
      TextSpan(
          text:
              'te acerca una herramienta para tu formación profesional, reafirmando el interés por formar jóvenes profesionales comprometidos con el desarrollo social y científico de la provincia.En el nuevo formato'),
      TextSpan(
          text: 'Guia Estudiantil App 2020 ',
          style: TextStyle(fontFamily: "MExtra")),
      TextSpan(
          text:
              'mediante los diferentes filtros vas a poder buscar por universidades (públicas, privadas) por modalidad de cursado, (presencial, virtual) por carrera, por localidad, además de las diferentes propuestas de becas. Buscamos que sea una herramienta que te permita encontrar una propuesta acorde a tus intereses y posibilidades. '),
    ],
  ),
);
