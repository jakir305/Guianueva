import 'package:guiae/screens/authenticate/sign_in_google.dart';
import 'package:guiae/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:guiae/src/Utils/text_style.dart';

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

  // text field state
  String email = '';
  String password = '';

  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        height: double.infinity,
        
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            
            colors: [Colors.white,Colors.tealAccent[700]])

        ),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  child: Image.asset('Asset/Logo1.png'),
                  height: 100,
                  width: 100,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
                  margin: EdgeInsets.all(10.0),
                  child: Text('Guia  Estudiantil', style: styleGuia),
                ),
                
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        maxLines: 1,
                        decoration: 
                      
                        
                        InputDecoration.collapsed(
                          fillColor: Colors.white,
                          filled: true,
                          
                          
                          
                        
                            border: OutlineInputBorder(
                                borderSide: BorderSide(style:BorderStyle.solid,color: Colors.black,),
                                borderRadius: BorderRadius.circular(20)),
                                

                            hintText: 'usuario'),
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
                          fillColor: Colors.white,
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
                SizedBox(height: 20.0),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                        highlightColor: Colors.tealAccent[700],
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                        elevation: 15.0,
                        color: Colors.white,
                        child: Text(
                          '  Iniciar sesion  ',
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            dynamic result = await _auth.signInWithEmailAndPassword(
                                email, password);
                                Navigator.pushNamed(context, '/');
                                
                                
                            if (result == null) {
                              setState(() {
                                error = 'No pudo ingresar con esas Credenciales';
                              });
                            }
                          }
                        }),

                        SizedBox(width: 20.0,),
                        RaisedButton(
                        highlightColor: Colors.tealAccent[700],
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                        
                        elevation: 15.0,
                        color: Colors.white,
                        child: Text(
                          '  Registrarse  ',
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => Navigator.pushNamed(context, 'registrarse'),
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
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    elevation: 15.0,
                    color: Colors.white,
                    icon: Container(
                      width: 25.0,
                      height:25.0,

                      child: Image.asset('Asset/Facebook.png')),
                    label: Text('Continuar con Facebook ',style:TextStyle(fontSize: 15),),
                    onPressed: (){
                     
                        

                    },
                    ),

                    RaisedButton.icon(
                    highlightColor: Colors.tealAccent[700],
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    elevation: 15.0,
                    color: Colors.white,
                    icon: Container(
                      width: 25.0,
                      height:25.0,

                      child: Image.asset('Asset/Google.png')),
                    label: Text('   Continuar con Google   ',style:TextStyle(fontSize: 15),),
                    onPressed: () {
                        signInWithGoogle().whenComplete(() {
                        Navigator.pushNamed(context, "/");
                       });
                     }
                   )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
