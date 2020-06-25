import 'package:guiae/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:guiae/src/providers/carreras_info.dart';
import 'package:guiae/src/providers/detalles_info.dart';
import 'package:guiae/src/providers/universidades_info.dart';
import 'package:guiae/src/routes/routes.dart';
import 'package:guiae/src/share_preferences/preferencias_usuario.dart';
import 'package:provider/provider.dart';
import 'package:guiae/models/user.dart';

 
void main() async{ 
  runApp(MyApp());
   final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();

  }

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create:(context) => UniversidadInfo()),
          ChangeNotifierProvider(create:(context) => CarreraInfo()),
          ChangeNotifierProvider(create:(context) => DetallesInfo()),
       ],
          child: MaterialApp(
        
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: getApplicationRoutes(),

        ),
      ),
    );
  }
}