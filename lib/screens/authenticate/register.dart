import 'package:guiae/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:guiae/src/Utils/text_style.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String avatar;
  AssetImage avatarAsset;
  String valTemp;
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';

  // text field state
  String nombre = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    final Color color = Color.fromRGBO(0, 167, 160, 1);
    final _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Colors.tealAccent[700]])),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  height: _screenSize.height * 0.2,
                  child: Image.asset('Asset/Logo1.png'),
                ),
                Container(
                  height: _screenSize.height * 0.1,
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                  child: Image.asset('Asset/ICONOS INICIO.png'),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: <Widget>[
                      // nombre y apellido
                      TextFormField(
                        textAlign: TextAlign.left,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                        maxLines: 1,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.people,
                              color: Colors.white,
                            ),
                            contentPadding: EdgeInsets.all(1),
                            fillColor: color,
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: color,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            hintText: 'Nombre y Apellido',
                            hintStyle: TextStyle(color: Colors.white)),
                        validator: (val) =>
                            val.isEmpty ? 'Ingrese su nombre y apellido' : null,
                        onChanged: (val) {
                          setState(() => nombre = val);
                        },
                      ),

                      SizedBox(
                        height: 15.0,
                      ),

                      // Caja de correo
                      TextFormField(
                        textAlign: TextAlign.left,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: color,
                          fontSize: 20.0,
                        ),
                        maxLines: 1,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(1),
                            prefixIcon: Image.asset(
                              'Asset/ICONOS INICIO-04.png',
                              scale: 9,
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            hintText: 'Correo',
                            hintStyle: TextStyle(color: color)),
                        validator: (val) =>
                            val.isEmpty ? 'Ingrese Email valido' : null,
                        onChanged: (val) {
                          setState(() => email = val);
                        },
                      ),

                      SizedBox(
                        height: 15.0,
                      ),

                      // Caja de contraseña
                      TextFormField(
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                        maxLines: 1,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(1),
                            prefixIcon: Image.asset(
                              'Asset/ICONOS INICIO-05.png',
                              scale: 9,
                            ),
                            fillColor: color,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50)),
                            hintText: 'Contraseña',
                            hintStyle: TextStyle(color: Colors.white)),
                        obscureText: true,
                        validator: (val) => val.length < 6
                            ? 'Contraseña menor a 6 caracteres'
                            : null,
                        onChanged: (val) {
                          setState(() {
                            password = val;
                            valTemp = val;
                          });
                        },
                      ),

                      SizedBox(
                        height: 15.0,
                      ),

                      // Caja de contraseña validacion
                      TextFormField(
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: color,
                          fontSize: 20.0,
                        ),
                        maxLines: 1,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(1),
                            prefixIcon: Image.asset(
                              'Asset/ICONOS INICIO-05.png',
                              color: color,
                              scale: 9,
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50)),
                            hintText: 'Repita la Contraseña',
                            hintStyle: TextStyle(color: color)),
                        obscureText: true,
                        validator: (val) {
                          if (val != valTemp) {
                            return 'Las contraseñas no coinciden';
                          }
                          return null;
                        },
                        onChanged: (val) {
                          setState(() => password = val);
                        },
                      ),

                      //Seleccion de icono

                      SizedBox(
                        height: 15.0,
                      ),
                      DropdownButton<String>(
                        itemHeight: 100.0,
                        hint: Text('Icono'),
                        value: avatar,
                        items: <String>[
                          'Asset/unco1.png',
                          'Asset/balseiro.png',
                          'Asset/utn.png'
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Center(
                              child: Container(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                height: 80.0,
                                width: 80.0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image(image: AssetImage(value)),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (newvalue) {
                          setState(() {
                            avatar = newvalue;
                            avatarAsset = AssetImage(newvalue);
                          });
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15.0),
                InkWell(
                  child: Text(
                    "Ya tenes cuenta? Ingresa aca",
                    style: TextStyle(shadows: <Shadow>[
                      Shadow(
                        blurRadius: 8.0,
                        color: Colors.black87,
                        offset: Offset(0, 0),
                      )
                    ], color: Colors.white, fontSize: 15),
                  ),
                  onTap: () => widget.toggleView(),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  error,
                  style: TextStyle(color: Colors.red, fontSize: 14.0),
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                        highlightColor: Colors.tealAccent[700],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        elevation: 15.0,
                        color: Colors.white,
                        child: Text(
                          '  Registrarse e ingresar  ',
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () async {
                          if (avatar == null) {
                            setState(() {
                              error = 'Seleccione un icono para su avatar';
                            });
                          } else {
                            if (_formKey.currentState.validate()) {
                              dynamic result =
                                  await _auth.registerWithEmailAndPassword(
                                      email, password, nombre, avatar);

                              if (result == null) {
                                setState(() {
                                  error = 'Ingrese un email valido';
                                });
                              }
                            }
                          }
                        }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
