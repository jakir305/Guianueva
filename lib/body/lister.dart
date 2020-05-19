import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
  home: Lister(),
));

class Lister extends StatelessWidget {
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

      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
            children: <Widget>[
              Card(
                child: InkWell(
                  splashColor: Colors.limeAccent,
                  onTap: () {
                    print('Univeridad elegida');
                    Navigator.of(context).pushReplacementNamed('/unco');
                  },
                  child: Container(
                    width: 300,
                    height: 100,
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Image.asset('Asset/unco.png',
                            scale: 3,

                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text('UNCO',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black54,
                                  ),
                                ),
                                Text('Unversidad Nacional del Comahue',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.blueGrey,
                                    ))
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
                child: InkWell(
                  splashColor: Colors.limeAccent,
                  onTap: () {
                    print('Univeridad elegida');
                  },
                  child: Container(
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Image.asset('Asset/unrn.png',
                            scale: 3,
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text('UNRN',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black54,
                                  ),
                                ),
                                Text('Unversidad Nacional de Rio Negro',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.blueGrey,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    width: 300,
                    height: 100,
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  splashColor: Colors.limeAccent,
                  onTap: () {
                    print('Univeridad elegida');
                  },
                  child: Container(
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Image.asset('Asset/utn.png',
                            scale: 3,
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text('UTN',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black54,
                                  ),
                                ),
                                Text('Unversidad Tecnologica Nacional',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.blueGrey,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    width: 300,
                    height: 100,
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  splashColor: Colors.limeAccent,
                  onTap: () {
                    print('Univeridad elegida');
                  },
                  child: Container(
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Image.asset('Asset/balseiro.png',
                            scale: 3,
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text('BALSEIRO',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black54,
                                  ),
                                ),
                                Text('Instituto Balseiro',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.blueGrey,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    width: 300,
                    height: 100,
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  splashColor: Colors.limeAccent,
                  onTap: () {
                    print('Univeridad elegida');
                  },
                  child: Container(
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Image.asset('Asset/vegeta.png',
                            scale: 3,
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text('CPE',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black54,
                                  ),
                                ),
                                Text('CONSEJO PROVINCIAL DE EDUCACIÓN ',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.blueGrey,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    width: 300,
                    height: 100,
                  ),
                ),
              ),

            ],
          )
      ),
    );
  }
}