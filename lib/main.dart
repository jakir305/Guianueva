import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
  @override
  void initState() {
    
    super.initState();
    final pushProvider = new PushNotificationProvider();
    pushProvider.initNotifications();



    //Inicializacio nde notificaciones

 
// initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
var initializationSettingsAndroid = AndroidInitializationSettings('logo1');
var initializationSettingsIOS = IOSInitializationSettings();
var initializationSettings = InitializationSettings(
    initializationSettingsAndroid, initializationSettingsIOS);
  flutterLocalNotificationsPlugin.initialize(initializationSettings,
    onSelectNotification: onSelectNotification);

    


  }

  @override
  Widget build(BuildContext context) {
    return StreamProvider<LocalUser>.value(
      value: AuthService().user,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => UniversidadInfo()),
          ChangeNotifierProvider(create: (context) => CarreraInfo()),
          ChangeNotifierProvider(create: (context) => DetallesInfo()),
          ChangeNotifierProvider(create: (context) => ColectivosInfo()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: getApplicationRoutes(),
        ),
      ),
    );
  }


  Future onSelectNotification(String payload) async {
    if (payload != null) {
      debugPrint('notification payload: ' + payload);
    }
    
    
}


}

