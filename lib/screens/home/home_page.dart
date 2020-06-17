import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guiae/services/auth.dart';



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    
    

    var scaffold = Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      title: Text('Guia Estudiantil'),
      backgroundColor: Colors.tealAccent[700],
      elevation: 0.0,

      actions: <Widget>[
            
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlatButton.icon(
                icon: Icon(Icons.person),
                label: Text('Salir'),
                shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(30.0)),
                 color: Colors.white,
                onPressed: () async {
                  _auth.signOutFacebook();
                  _auth.signOut();
                  _auth.signOutGoogle();
   
                },
              ),
            ),
          ]

      ),

    
    
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.tealAccent[700],
              ),
              accountName: Text('name',
              style: TextStyle(
                fontSize: 25,
              ),
              ),
              accountEmail: Text('email'),
              // currentAccountPicture: CircleAvatar(
              //   backgroundColor: Colors.tealAccent[700],
              //   backgroundImage: NetworkImage(imageUrl),
              // ),
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
          ],
        ),
      ),

      
  
      body: SingleChildScrollView(
        child: Container(
          child: Center(
              child: Column(
                  children: <Widget>[
                    Row(
          children: <Widget>[
            Expanded(
              
              child: IconButton(
                  color: Colors.blue,
                  iconSize: 100,
                  icon: Icon(Icons.account_balance),
                  onPressed: (){
                    Navigator.pushNamed(context, 'universidades');
                  }
                  ),
            ),
            Expanded(
              
              child: Column(
                children: <Widget>[
                  IconButton(
          color: Colors.blue,
          iconSize: 100,
          icon: Icon(Icons.directions_bus),
          onPressed: (){
          }
                  ),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
            Expanded(
              
              child: IconButton(
                  color: Colors.grey,
                  iconSize: 100,
                  icon: Icon(Icons.book),
                  onPressed: (){
                  }
              ),
            ),
          ],
                    ),
                    Row(
          children: <Widget>[
            Expanded(
              
              child: IconButton(
                  color: Colors.grey,
                  iconSize: 100,
                  icon: Icon(Icons.event_available),
                  onPressed: (){
                  }
              ),
            ),
            Expanded(
              
              child: Image.asset('Asset/Logo1.png',
                scale: 1,
              ),
            ),
            Expanded(
              
              child: IconButton(
                  color: Colors.grey,
                  iconSize: 100,
                  icon: Icon(Icons.healing),
                  onPressed: (){
                  }
              ),
            ),
          ],
                    ),
                    Row(
          children: <Widget>[
            Expanded(
              
              child: IconButton(
                  color: Colors.grey,
                  iconSize: 100,
                  icon: Icon(Icons.directions_run),
                  onPressed: (){
                  }
              ),
            ),
            Expanded(
              
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 70,
                  ),

                  IconButton(
          color: Colors.grey,
          iconSize: 100,
          icon: Icon(Icons.explore),
          onPressed: (){
          }
                  ),
                ],
              ),
            ),
            Expanded(
              child: IconButton(
                  color: Colors.blue,
                  iconSize: 100,
                  icon: Icon(Icons.search),
                  onPressed: (){
                  }
              ),
            ),
          ],
                    ),
                  ],
                ),
            ),
        ),
      ),
    );
    return scaffold;
  }
}