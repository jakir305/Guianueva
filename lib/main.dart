import 'package:guiae/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:guiae/src/providers/carreras_info.dart';
import 'package:guiae/src/providers/colectivos_info.dart';
import 'package:guiae/src/providers/detalles_info.dart';
import 'package:guiae/src/providers/universidades_info.dart';
import 'package:guiae/src/routes/routes.dart';
import 'package:guiae/src/share_preferences/preferencias_usuario.dart';
import 'package:provider/provider.dart';
import 'package:guiae/models/user.dart';
import 'package:guiae/src/providers/push_notificans_provider.dart';

void main() async{ 
  runApp(MyApp());
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();

  }

class MyApp extends StatefulWidget {

  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();

    final pushProvider = new PushNotificationProvider();
    pushProvider.initNotifications();
  }
  
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create:(context) => UniversidadInfo()),
          ChangeNotifierProvider(create:(context) => CarreraInfo()),
          ChangeNotifierProvider(create:(context) => DetallesInfo()),
          ChangeNotifierProvider(create:(context) => ColectivosInfo()),
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
