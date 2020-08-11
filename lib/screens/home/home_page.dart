import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guiae/services/auth.dart';
// import 'package:guiae/src/search/search_delegate.dart';
import 'package:guiae/src/share_preferences/preferencias_usuario.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
// import 'package:guiae/src/Utils/text_style.dart';
import 'dart:math';
import 'package:vector_math/vector_math.dart' show radians;
import 'package:flutter/foundation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthService auth = AuthService();

  @override
  Widget build(BuildContext context) {
    Image _avatar;
    final prefs = new PreferenciasUsuario();
    if (prefs.imageUrl == '') {
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

    var scaffold = Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text('Guia Estudiantil'),
            backgroundColor: Colors.tealAccent[700],
            elevation: 0.0,
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                ),
            ]),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.tealAccent[700],
                  ),
                  accountName: Text(
                    prefs.name,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  accountEmail: Text(prefs.email),
                  currentAccountPicture: Container(
                    child: ClipRRect(
                      child: _avatar,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  )),
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
                leading: Icon(Icons.keyboard_tab),
                title: Text("Mas información"),
                onTap: () {
                  showAboutDialog(
                  context: context,
                  applicationVersion: "0.0.0",
                  applicationLegalese:
                  '-',
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
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors:[Colors.greenAccent,Colors.white]) 
          
          ),
          child: SizedBox.expand(child: RadialMenu())));
    return scaffold;
  }
}

class RadialMenu extends StatefulWidget {
  createState() => _RadialMenuState();
}

class _RadialMenuState extends State<RadialMenu>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(milliseconds: 900), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return RadialAnimation(controller: controller);
  }
}

class RadialAnimation extends StatelessWidget {
  RadialAnimation({Key key, this.controller})
      : scale = Tween<double>(
          begin: 3.5,
          end: 0.0,
        ).animate(
          CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn),
        ),
        translation = Tween<double>(begin: 0.0, end: 100.0).animate(
            CurvedAnimation(parent: controller, curve: Curves.elasticOut)),
        rotation = Tween<double>(
          begin: 0.0,
          end: 360.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.0,
              0.9,
              curve: Curves.decelerate,
            ),
          ),
        ),
        super(key: key);

  final AnimationController controller;
  final Animation<double> scale;
  final Animation<double> translation;
  final Animation<double> rotation;

  build(context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, builder) {
          return Transform.rotate(
            angle: radians(rotation.value),
            child: Stack(alignment: Alignment.center, children: [
              _buildButton(30,
                  color: Colors.red, icon: LineAwesomeIcons.bookmark, link: () {
                Navigator.pushNamed(context, 'centrosestudio');
              }),
              _buildButton(90,
                  color: Colors.blue, icon: LineAwesomeIcons.search_plus, link: () {
                Navigator.pushNamed(context, 'universidades');
              }),
              _buildButton(150,
                  color: Colors.amber, icon: LineAwesomeIcons.calendar_check_o,
                  link: () {
                Navigator.pushNamed(context, 'eventos');
              }),
              _buildButton(210,
                  color: Colors.blue, 
                  icon: LineAwesomeIcons.university, link: () {
                Navigator.pushNamed(context, 'universidades');
              }),
              _buildButton(270, color: Colors.blue, icon: LineAwesomeIcons.bus, link: () {
                Navigator.pushNamed(context, 'colectivos');
              }),
              _buildButton(330,
                  color: Colors.lime, icon: LineAwesomeIcons.book, link: () {
                Navigator.pushNamed(context, 'becas');
              }),
              Transform.scale(
                scale: scale.value -
                    1, // subtract the beginning value to run the opposite animation
                child: FloatingActionButton(
                    heroTag: "2",
                    child: Icon(LineAwesomeIcons.minus_circle),
                    onPressed: _close,
                    backgroundColor: Colors.red),
              ),
              Transform.scale(
                scale: scale.value,  
                child: FloatingActionButton(
                    backgroundColor: Colors.greenAccent[400],
                    heroTag: "1",
                    child: Icon(LineAwesomeIcons.plus_circle), onPressed: _open),
              )
            ]),
          );
        });
  }

  _buildButton(
    double angle, {
    Color color,
    IconData icon,
    VoidCallback link,

  }) {
    final double rad = radians(angle);
    return Transform(
      transform: Matrix4.identity()
        ..translate(
            (translation.value) * cos(rad), (translation.value) * sin(rad)),
      child: IconButton(
        color: color,
        iconSize: 100,
        icon: Icon(icon),
        onPressed: link,
      ),
    );
  }

  _open() {
    controller.forward();
  }

  _close() {
    controller.reverse();
  }
}
