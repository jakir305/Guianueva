import 'package:guiae/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;

  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

// Color.fromRGBO(0, 167, 160, 1),

  String error = '';
  String temp;

  // text field state
  String nombre = '';
  String email = '';
  String password = '';

  Widget build(BuildContext context) {
    final Color color = Color.fromRGBO(0, 167, 160, 1);
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
                SizedBox(height: _screenSize.height * 0.05),
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
                      Container(
                        height: 30,
                        child: TextFormField(
                          textAlign: TextAlign.left,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            fontFamily: "MMedium",
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                          maxLines: 1,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(1),
                            fillColor: color,
                            filled: true,
                            prefixIcon: Image.asset(
                              'Asset/ICONOS INICIO-06.png',
                              scale: 9,
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: color,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            hintText: 'Correo',
                            hintStyle: TextStyle(
                              fontFamily: "MMedium",
                              color: Colors.white,
                            ),
                          ),
                          validator: (val) =>
                              val.isEmpty ? 'Ingrese Email valido' : null,
                          onChanged: (val) {
                            setState(() => email = val);
                          },
                        ),
                      ),
                      SizedBox(height: 25.0),
                      Container(
                        height: 30,
                        child: TextFormField(
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: "MMedium",
                            color: color,
                            fontSize: 20.0,
                          ),
                          maxLines: 1,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(1),
                            fillColor: Colors.white,
                            prefixIcon: Image.asset(
                              'Asset/ICONOS INICIO-05.png',
                              scale: 9,
                              color: color,
                            ),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50)),
                            hintText: 'contraseña',
                            hintStyle: TextStyle(
                              fontFamily: "MMedium",
                              color: color,
                            ),
                          ),
                          obscureText: true,
                          validator: (val) => val.length < 6
                              ? 'Contraseña menor a 6 caracteres'
                              : null,
                          onChanged: (val) {
                            setState(() => password = val);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: _screenSize.height * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                          highlightColor: Colors.tealAccent[700],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0)),
                          elevation: 15.0,
                          color: Colors.white,
                          child: Text(
                            'Iniciar sesion',
                            style: TextStyle(color: color),
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
                            borderRadius: BorderRadius.circular(50.0)),
                        elevation: 15.0,
                        color: Colors.white,
                        child: Text(
                          'Registrarse',
                          style: TextStyle(color: color),
                        ),
                        onPressed: () => widget.toggleView(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.0),
                Text(
                  error,
                  style: TextStyle(color: Colors.red, fontSize: 14.0),
                ),
                Container(
                  height: _screenSize.height * 0.2,
                  child: Column(
                    children: [
                      RaisedButton.icon(
                        highlightColor: Colors.tealAccent[700],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        elevation: 15.0,
                        color: Color.fromRGBO(59, 90, 153, 1),
                        icon: Container(
                            width: 25.0,
                            height: 25.0,
                            child: Image.asset('Asset/ICONOS INICIO-01.png')),
                        label: Text(
                          'Continuar con Facebook',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: Colors.white70,
                          ),
                        ),
                        onPressed: () async {
                          await _auth.loginWithFacebook();
                        },
                      ),
                      SizedBox(
                        height: _screenSize.height * 0.02,
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
                            'Continuar con Google',
                            style: TextStyle(fontSize: 15),
                          ),
                          onPressed: () async {
                            await _auth.signInWithGoogle();
                          })
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
