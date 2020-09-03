import 'package:flutter/material.dart';
import 'package:guiae/screens/authenticate/register.dart';
import 'package:guiae/screens/authenticate/sign_in.dart';
import 'package:guiae/screens/home/home_page.dart';
import 'package:guiae/screens/home/wrapper.dart';
import 'package:guiae/src/pages/carreras_page.dart';
import 'package:guiae/src/pages/colectivos_lugar_page.dart';
import 'package:guiae/src/pages/detalles_page.dart';
import 'package:guiae/src/pages/lineas_colectivos.dart';
import 'package:guiae/src/pages/nosotros.dart';
import 'package:guiae/src/pages/temp_notifi.dart';
import 'package:guiae/src/pages/test.dart';
import 'package:guiae/src/pages/universidades.page.dart';
import 'package:guiae/src/pages/becas.dart';
import 'package:guiae/src/pages/eventos.dart';
import 'package:guiae/src/pages/centros_estudio.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'temp': (BuildContext context) => Temp(),
    'home': (BuildContext context) => HomePage(),
    '/': (BuildContext context) => Wrapper(),
    'loading': (BuildContext context) => Wrapper(),
    'detalles': (BuildContext context) => CarreraDetalles(),
    'universidades': (BuildContext context) => UniversidadesPage(),
    'carreras': (BuildContext context) => ListaDeCarreras(),
    'registrar': (BuildContext context) => Register(),
    'ingresar': (BuildContext context) => SignIn(),
    'nosotros': (BuildContext context) => Nosotros(),
    'colectivos': (BuildContext context) => ColectivosPage(),
    'lineas': (BuildContext context) => ColectivosLineasPage(),
    'becas': (BuildContext context) => Becasvarias(),
    'eventos': (BuildContext context) => Eventos(),
    'centrosestudio': (BuildContext context) => CentrosEstudio(),
    'test': (BuildContext context) => Testvocacional(),
    'test1': (BuildContext context) => Testvocacional1(),
    'test2': (BuildContext context) => Testvocacional2(),
    'test3': (BuildContext context) => Testvocacional3(),
    'test4': (BuildContext context) => Testvocacional4(),
    'test5': (BuildContext context) => Testvocacional5(),
    'test6': (BuildContext context) => Testvocacional6(),
    'test7': (BuildContext context) => Testvocacional7(),
    'test8': (BuildContext context) => Testvocacional8(),
    'test9': (BuildContext context) => Testvocacional9(),
    'test10': (BuildContext context) => Testvocacional10(),
    'test11': (BuildContext context) => Testvocacional11(),
    'test12': (BuildContext context) => Testvocacional12(),
    'test13': (BuildContext context) => Testvocacional13(),
    'test14': (BuildContext context) => Testvocacional14(),
    'test15': (BuildContext context) => Testvocacional15(),
    'test16': (BuildContext context) => Testvocacional16(),
    'test17': (BuildContext context) => Testvocacional17(),
    'test18': (BuildContext context) => Testvocacional18(),
    'test19': (BuildContext context) => Testvocacional19(),
    'test20': (BuildContext context) => Testvocacional20(),
    'test21': (BuildContext context) => Testvocacional21(),
    'test22': (BuildContext context) => Testvocacional22(),
    'test23': (BuildContext context) => Testvocacional23(),
    'test24': (BuildContext context) => Testvocacional24(),
    'test25': (BuildContext context) => Testvocacional25(),
    'test26': (BuildContext context) => Testvocacional26(),
    'test27': (BuildContext context) => Testvocacional27(),
    'test28': (BuildContext context) => Testvocacional28(),
    'test29': (BuildContext context) => Testvocacional29(),
    'resultados': (BuildContext context) => Resultados(),
  };
}
