import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guiae/services/auth.dart';
import 'package:guiae/src/providers/provider.dart';
import 'package:guiae/src/search/search_delegate.dart';
import 'package:guiae/src/share_preferences/preferencias_usuario.dart';
import 'package:guiae/src/widgets/menu_card.dart';

List carreras;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color color = Color.fromRGBO(0, 167, 160, 1);
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Image _avatar;
  final prefs = new PreferenciasUsuario();
  final AuthService auth = AuthService();
  final BuscadorProvider buscador = new BuscadorProvider();
  @override
  void initState() {
    buscador.cargarCarreras();
    carreras = buscador.carreras;

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

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      floatingActionButton: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      drawer: _drawer(context),
      body: _body(context),
    );
    return scaffold;
  }

  Widget _drawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
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
            leading: Icon(Icons.search),
            title: Text("BUSCADOR"),
            onTap: () {
              showSearch(context: context, delegate: DataSearch());
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("Acerca de Nosotros"),
            onTap: () {
              Navigator.pushNamed(context, 'nosotros');
            },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("Comparte la Aplicacion"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.flag),
            title: Text("Politicas de Privacidad"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.fiber_new),
            title: Text("Test Vocacional"),
            onTap: () {
              Navigator.pushNamed(context, 'test');
            },
          ),
          ListTile(
            leading: Icon(Icons.fiber_new),
            title: Text("CLOUD UNIVERSIDADES"),
            onTap: () {
              Navigator.pushNamed(context, 'clouduniversidades');
            },
          ),
          ListTile(
            leading: Icon(Icons.keyboard_tab),
            title: Text("Mas información"),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationVersion: "0.0.0",
                applicationLegalese: '-',
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text('-'),
                  ),
                ],
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Salir"),
            onTap: () async {
              auth.signOutFacebook();
              auth.signOut();
              auth.signOutGoogle();
            },
          ),
        ],
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
}
