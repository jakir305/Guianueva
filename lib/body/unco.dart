import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Unco(),
));

class Unco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pushReplacementNamed('/lister');
          },
          icon: Icon(Icons.arrow_back,
            color: Colors.greenAccent,),
        ),
      ),

      body: SafeArea(
      child: ListView(
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
        children: <Widget>[
          FlatButton(
            onPressed: (){
              Navigator.of(context).pushReplacementNamed('/infounco');
            },
            child: Container(
              height: 100,
              width: 100,
              child: Image.asset('Asset/unco.png',
                scale: 2,),
            ),
          ),

              Card(
                child: InkWell(
                  splashColor: Colors.limeAccent,
                  onTap: () {
                    print('ing. electronica');
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Center(
                      child: Row(

                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text('Ing. Electronica',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black54,
                                  ),
                                ),
                                Text('Facultad de Ingenieria',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.deepPurpleAccent,
                                    ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(child: Text('Duracion 5 años',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                    ),

                                    ),
                                    Expanded(child: Text('Neuquén',
                                      style: TextStyle(
                                          fontSize: 18,
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
                child: InkWell(
                  splashColor: Colors.limeAccent,
                  onTap: () {
                    print('Lic. en Bellas Artes');
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Center(
                      child: Row(

                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text('Lic. Bellas Artes',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black54,
                                  ),
                                ),
                                Text('Facultad de Ingenieria',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.green,
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(child: Text('Duracion 5 años',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),

                                    ),
                                    Expanded(child: Text('Plottier',
                                      style: TextStyle(
                                        fontSize: 18,
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
                child: InkWell(
                  splashColor: Colors.limeAccent,
                  onTap: () {
                    print('Lic. en Contaduría');
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Center(
                      child: Row(

                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text('Lic. en Contaduría',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black54,
                                  ),
                                ),
                                Text('Facultad de Economia',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.redAccent,
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(child: Text('Duracion 5 años',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),

                                    ),
                                    Expanded(child: Text('Allén',
                                      style: TextStyle(
                                        fontSize: 18,
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
                child: InkWell(
                  splashColor: Colors.limeAccent,
                  onTap: () {
                    print('Lic. Psicología');
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Center(
                      child: Row(

                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text('Lic. Psicología',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black54,
                                  ),
                                ),
                                Text('Facultad de Medicina',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.blue,
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(child: Text('Duracion 5 años',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),

                                    ),
                                    Expanded(child: Text('Cipolletti',
                                      style: TextStyle(
                                        fontSize: 18,
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
    ),
    );
  }
}