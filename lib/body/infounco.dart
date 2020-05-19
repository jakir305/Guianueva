import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
  home: Infounco(),
));

class Infounco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pushReplacementNamed('/unco');
          },
          icon: Icon(Icons.arrow_back,
            color: Colors.black,),
        ),
      ),

      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset('Asset/unco.png',
                  width:100.0,
                  height:100.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('Universidad Nacional del Comahue',
                style: TextStyle(
                color: Colors.black,
                  fontSize: 23.0,
                ),
                ),
                Text('Neuquén - Rio Negro',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blue
                ),),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    border: Border.all(
                      width: 4.0,
                      color: Colors.blue,
                      style: BorderStyle.solid,

                    ),
                    ),
                  child: Text('Estimula todas aquellas actividades que contribuyan'
                      ' sustancialmente al mejoramiento social del país,'
                      ' al afianzamiento de las instituciones democráticas,'
                      ' y, a través de ello, a la afirmación del derecho y la justicia.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                    ),
                  ),
                ),
                Card(
                  elevation: 0.0,
                  child: InkWell(
                    splashColor: Colors.lightBlue,
                    onTap: () {},
                    child: Container(
                      width: 400,
                      height: 100,
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text('SECRETARÍA GENERAL',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Text('A Cargo Dra. Adriana Catalina CABALLERO',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.deepPurpleAccent,
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(

                                        child: Text('Tel. +54 (0299) 4490300',
                                        style: TextStyle(
                                          fontSize: 17.5,
                                        ),
                                      ),
                                      ),
                                      Expanded(
                                        child: Text('/ int. 374 – 361',
                                        style: TextStyle(
                                          fontSize: 17.5,
                                        ),
                                      ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 0.0,
                  child: InkWell(
                    splashColor: Colors.blueAccent,
                    onTap: () {},
                    child: Container(
                      width: 400,
                      height: 100,
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text('SECRETARIA ACADÉMICA',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Text('Prof. Cristina Beatriz CANO',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.deepPurpleAccent,
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text('Tel. +54 (0299) 4490300 ',
                                          style: TextStyle(
                                            fontSize: 17.5,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text('int. 354',
                                          style: TextStyle(
                                            fontSize: 17.5,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ],
        ),
      ),
    );
  }
}