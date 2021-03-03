import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guiae/models/carreras_model.dart';
import 'package:guiae/services/auth.dart';
import 'package:guiae/src/providers/provider.dart';
import 'package:guiae/src/search/search_delegate.dart';
import 'package:guiae/src/share_preferences/preferencias_usuario.dart';
import 'package:guiae/src/widgets/menu_card.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

List<Carrera> carreras;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color color = Color.fromRGBO(0, 167, 160, 1);
  final Color colorfont1 = Color(0xff3C3C3B);
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Image _avatar;
  final prefs = new PreferenciasUsuario();
  final AuthService auth = AuthService();
  final BuscadorProvider buscador = new BuscadorProvider();
  @override
  void initState() {
    if (prefs.imageUrl == "") {
      _avatar = Image(
        image: AssetImage(prefs.imageAsset),
      );
    } else {
      _avatar = Image(
        image: NetworkImage(prefs.imageUrl),
        fit: BoxFit.cover,
        height: 65,
        width: 65,
        alignment: Alignment.center,
      );
    }

    carreras = buscador.cargarBuscador();
    print(carreras.length);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(prefs.imageUrl);
    final _screenSize = MediaQuery.of(context).size;
    var scaffold = Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      floatingActionButton: Stack(
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              }),
          Align(
            alignment: AlignmentDirectional.topEnd,
            widthFactor: 20,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: FloatingActionButton(
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.white,
                elevation: 0.0,
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: DataSearch(),
                  );
                },
                heroTag: null,
                child: Icon(Icons.search),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      drawer:
          Container(width: _screenSize.width * 0.75, child: _drawer(context)),
      body: _body(context),
    );
    return scaffold;
  }

  Widget _drawer(BuildContext context) {
    return Drawer(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 1.8,
          sigmaY: 1.8,
        ),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: color,
                ),
                accountName: Text(
                  prefs.name,
                  style: TextStyle(
                    fontFamily: "MExtra",
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                accountEmail: Text(
                  prefs.email,
                  style: TextStyle(fontFamily: "MMedium", color: Colors.white),
                ),
                currentAccountPicture: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: Colors.white, width: 2)),
                  child: ClipRRect(
                    child: _avatar,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                )),
            ListTile(
              leading: Icon(Icons.info),
              title: Text(
                "Acerca de Nosotros",
                style: TextStyle(
                    fontFamily: "Mmedium", color: colorfont1, fontSize: 15.0),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'nosotros');
              },
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text(
                "Comparte la Aplicacion",
                style: TextStyle(
                    fontFamily: "Mmedium", color: colorfont1, fontSize: 15.0),
              ),
              onTap: () {
                Share.share(
                  'Guia Estudiantil: https://play.google.com/store/apps/details?id=com.lihuel305.guiae',
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.fiber_new),
              title: Text(
                "Test Vocacional",
                style: TextStyle(
                    fontFamily: "Mmedium", color: colorfont1, fontSize: 15.0),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'test');
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text(
                "Contactanos",
                style: TextStyle(
                    fontFamily: "Mmedium", color: colorfont1, fontSize: 15.0),
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    elevation: 10.0,
                    backgroundColor: Colors.white,
                    title: Text(
                      'Contactanos a travez de nuestros canales',
                      style: TextStyle(
                          fontFamily: "Mmedium",
                          color: colorfont1,
                          fontSize: 20.0),
                    ),
                    content: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          //Email

                          RaisedButton(
                            color: color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: Container(
                                width: 200.0,
                                child: Center(
                                    child: Text(
                                  'Email',
                                  style: TextStyle(
                                      fontFamily: "Mmedium",
                                      color: Colors.white,
                                      fontSize: 15.0),
                                ))),
                            onPressed: () {
                              urlLaunch(
                                  'mailto:encontrarnosnosfortalece@gmail.com?subject=Comentario%20o%20Sugerencia');
                            },
                          ),
                          //

                          RaisedButton(
                            color: color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: Container(
                                width: 200.0,
                                child: Center(
                                    child: Text(
                                  'Pagina del ministerio',
                                  style: TextStyle(
                                      fontFamily: "Mmedium",
                                      color: Colors.white,
                                      fontSize: 15.0),
                                ))),
                            onPressed: () {
                              urlLaunch('http://ministerionaj.gob.ar/');
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                "Salir",
                style: TextStyle(
                    fontFamily: "Mmedium", color: colorfont1, fontSize: 15.0),
              ),
              onTap: () async {
                auth.signOutFacebook();
                auth.signOut();
                auth.signOutGoogle();
              },
            ),
            Expanded(child: Container()),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                child: Text(
                  'Version: 1.0.2',
                  style: TextStyle(
                    fontFamily: "MMedium",
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _body(BuildContext context) {
    return SafeArea(
      child: Container(
          child: Column(
        children: <Widget>[
          CardMenu(
              nombre: "UNIVERSIDADES",
              image: "Asset/Universidades.jpg",
              link: () {
                Navigator.pushNamed(context, 'universidades');
              }),
          Divider(
            height: 5,
          ),
          CardMenu(
              nombre: "COLECTIVOS",
              image: "Asset/colectivos.jpg",
              link: () {
                Navigator.pushNamed(context, 'colectivos');
              }),
          Divider(
            height: 5,
          ),
          CardMenu(
              nombre: "BECAS",
              image: "Asset/becas.jpg",
              link: () {
                Navigator.pushNamed(context, 'becas');
              }),
          Divider(
            height: 5,
          ),
          CardMenu(
              nombre: "CENTROS DE ESTUDIO",
              image: "Asset/biblioteca.jpg",
              link: () {
                Navigator.pushNamed(context, 'centrosestudio');
              }),
          Divider(
            height: 5,
          ),
          CardMenu(
              nombre: "EVENTOS",
              image: "Asset/eventos.jpg",
              link: () {
                Navigator.pushNamed(context, 'eventos');
              }),
        ],
      )),
    );
  }

  void urlLaunch(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Error');
    }
  }
}
