
import 'package:flutter/material.dart';
import 'package:guiae/screens/authenticate/register.dart';
import 'package:guiae/screens/authenticate/sign_in.dart';
import 'package:guiae/screens/home/wrapper.dart';
import 'package:guiae/src/pages/carreras_page.dart';
import 'package:guiae/src/pages/facultades_page.dart';
import 'package:guiae/src/pages/nosotros.dart';
import 'package:guiae/src/pages/universidades.page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String,WidgetBuilder> {
      '/'            : ( BuildContext context ) => Wrapper(),
      'facultades'   : ( BuildContext context ) => ListaFacultadesPage(),
      'universidades': ( BuildContext context ) => UniversidadesPage(),
      'carreras'     : ( BuildContext context ) => ListaDeCarreras(),
      'registrar'    : ( BuildContext context ) => Register(),
      'ingresar'     : ( BuildContext context ) => SignIn(),
      'nosotros'      : ( BuildContext context ) => Nosotros(),

      };

}


