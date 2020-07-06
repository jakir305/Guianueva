import 'package:guiae/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:guiae/src/Utils/text_style.dart';


class Register extends StatefulWidget {
  

  final Function toggleView;
  Register({ this.toggleView });

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String avatar;
  String valTemp;
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';

  // text field state
  String nombre='';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                      
                      // nombre y apellido
                    TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        maxLines: 1,
                        decoration:InputDecoration.collapsed(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(style:BorderStyle.solid,
                              color: Colors.black,),
                              borderRadius: BorderRadius.circular(20)),
                                hintText:'nombre y apellido'),
                                 
                                onChanged: (val) {
                                setState(() => nombre = val);
                                
                            },
                          ),

                          SizedBox(height: 15.0,),

                        
                      // Caja de correo
                      TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        maxLines: 1,
                        decoration:InputDecoration.collapsed(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(style:BorderStyle.solid,
                              color: Colors.black,),
                              borderRadius: BorderRadius.circular(20)),
                                hintText:'correo'),
                                validator: (val) => val.isEmpty ? 'Ingrese Email valido' : null,
                                onChanged: (val) {
                                setState(() => email = val);
                            },
                          ),

                      Text(
                        error,
                        style: TextStyle(color: Colors.red, fontSize: 14.0),
                      ),

                      

                      // Caja de contraseña
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
                           
                           setState(() {
                             password = val;
                             valTemp = val;
                           });
                        },
                      ),

                      SizedBox(height: 15.0,),

                      // Caja de contraseña validacion
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
                            hintText: 'repita la contraseña'),
                            obscureText: true,
                            validator: (val) {
                          
                          if(val != valTemp){
                            return 'Las contraseñas no coinciden';
                          }
                          return null;
            
                        },
                        onChanged: (val) {
                          setState(() => password = val);
                        },
                      ),

                        
                        SizedBox(height: 10.0,),

                        //Seleccion de icono
                        
                        DropdownButton<String>(
                          itemHeight: 100.0,
                          hint: Text('Icono'),
                          value: avatar,
                    
                         items: <String>['Asset/unco1.png','Asset/balseiro.png','Asset/utn.png'].map((String value) {
                         return  DropdownMenuItem<String>(
                           value: value,
            
                           child: Center(
                             child: Container(
                               padding: const EdgeInsets.only(bottom: 10.0),
                               height: 80.0,
                               width: 80.0,
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 
                                 children: <Widget>[
                                   Image(image:AssetImage(value)
                                   ),
                                   
                                 ],
                               ),
                             ),
                           ),
                         );
                       }).toList(),
                       onChanged: (newvalue) {
                         setState(() {
                         avatar = newvalue;
                         });
                       },
                     )

                    ],
                  ),
                ),
                SizedBox(height: 10.0),

                  InkWell(
                    child: Text("Ya tenes cuenta? Ingresa aca",style: TextStyle(fontSize: 15),),
                    onTap:() => widget.toggleView(),
                    ),

                SizedBox(height: 10.0),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                        highlightColor: Colors.tealAccent[700],
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                        elevation: 15.0,
                        color: Colors.white,
                        child: Text(
                          '  Registrarse e ingresar  ',
                          style: TextStyle(color: Colors.black),
                        ),
                        
                        onPressed: () async {
                          
                      if(_formKey.currentState.validate()) {
                        dynamic result = await _auth.registerWithEmailAndPassword(email, password,nombre);
                   
                        if(result == null) {
                          setState(() {
                            error = 'Ingrese un email valido';
                            }
                          );
                        }
                      
                        

                      }
                      
                      
                    
                    }
                        ),
                         ],
                
                ),

                SizedBox(height: 20.0),
                

              ],
            ),
          ),
        ),
      ),
    );
  }
}

