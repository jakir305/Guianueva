import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Id(),
));

class Id extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pushReplacementNamed('/carre');
          },
          icon: Icon(Icons.arrow_back,
            color: Colors.greenAccent,),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
              backgroundImage: AssetImage('Asset/giuli.jpg'),
              radius: 70.0,
            ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey,
            ),
            Row(
              children: <Widget>[
                Expanded(child: Column(
                  children: <Widget>[
                    Text('Nombre'),
                    Text('Giuliano Martin',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ],
                )),
                Expanded(child: Column(
                  children: <Widget>[
                    Text('Apellido'),
                    Text('Lanzani',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.greenAccent,
                      ),),
                  ],
                )),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: <Widget>[
                Icon(Icons.email,
                color: Colors.greenAccent,
                  size: 35.0,
                ),
                Text('giulitiano.papu.genio@gmail.com',
                style: TextStyle(
                  fontSize: 20.0,
                ),),
              ],
            ),
            ],
            ),
        ),
      );
  }
}