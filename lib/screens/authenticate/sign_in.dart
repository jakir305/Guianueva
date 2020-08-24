import 'package:guiae/services/auth.dart';
import 'package:flutter/material.dart';
// import 'package:guiae/src/Utils/text_style.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;

  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';
  String temp;

  // text field state
  String nombre = '';
  String email = '';
  String password = '';

  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
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
                _imagen(context),
                Container(
                  height: _screenSize.height * 0.28,
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        textAlign: TextAlign.left,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                        maxLines: 1,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(1),
                          prefixIcon: Image.asset(
                            'Asset/ICONOS INICIO-06.png',
                            scale: 9,
                          ),
                          fillColor: Color.fromRGBO(0, 167, 160, 1),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Color.fromRGBO(0, 167, 160, 1),
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          hintText: 'Correo',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        validator: (val) =>
                            val.isEmpty ? 'Ingrese Email valido' : null,
                        onChanged: (val) {
                          setState(() => email = val);
                        },
                      ),
                      SizedBox(height: 25.0),
                      TextFormField(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        maxLines: 1,
                        decoration: InputDecoration.collapsed(
                            hintStyle: TextStyle(),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            hintText: 'contraseña'),
                        obscureText: true,
                        validator: (val) => val.length < 6
                            ? 'Contraseña menor a 6 caracteres'
                            : null,
                        onChanged: (val) {
                          setState(() => password = val);
                        },
                      ),
                    ],
                  ),
                ),
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
                          '  Iniciar sesion  ',
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            print(nombre);

                            dynamic result =
                                await _auth.signInWithEmailAndPassword(
                              email,
                              password,
                            );
                            if (result == null) {
                              setState(() {
                                error =
                                    'No pudo ingresar con esas Credenciales';
                              });
                            }
                          }
                        }),
                    SizedBox(
                      width: 20.0,
                    ),
                    RaisedButton(
                      highlightColor: Colors.tealAccent[700],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      elevation: 15.0,
                      color: Colors.white,
                      child: Text(
                        '  Registrarse  ',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () => widget.toggleView(),
                    ),
                  ],
                ),
                SizedBox(height: 12.0),
                Text(
                  error,
                  style: TextStyle(color: Colors.red, fontSize: 14.0),
                ),
                RaisedButton.icon(
                  highlightColor: Colors.tealAccent[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  elevation: 15.0,
                  color: Color.fromRGBO(20, 120, 242, 1),
                  icon: Container(
                      width: 25.0,
                      height: 25.0,
                      child: Image.asset('Asset/Facebook.png')),
                  label: Text(
                    'Continuar con Facebook ',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  onPressed: () async {
                    await _auth.loginWithFacebook();
                  },
                ),
                RaisedButton.icon(
                    highlightColor: Colors.tealAccent[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    elevation: 15.0,
                    color: Colors.white,
                    icon: Container(
                        width: 25.0,
                        height: 25.0,
                        child: Image.asset('Asset/Google.png')),
                    label: Text(
                      '   Continuar con Google   ',
                      style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () async {
                      await _auth.signInWithGoogle();
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _imagen(BuildContext context) {
  final _screenSize = MediaQuery.of(context).size;
  return Container(
    height: _screenSize.height * 0.418,
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 30.0,
        ),
        Container(
          child: Image.asset('Asset/Logo1.png'),
          height: 150,
          width: 150,
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Image.asset(
            'Asset/ICONOS INICIO.png',
            scale: 6,
          ),
        ),
      ],
    ),
  );
}

Widget _text(BuildContext context) {
  final _screenSize = MediaQuery.of(context).size;
  return Container();
}
