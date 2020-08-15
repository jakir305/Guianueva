import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:guiae/src/widgets/card_test.dart';


  int _humanidades = 0;
  int _arte = 0;
  int _administracion = 0;
  int _biologia = 0;
  int _matematica = 0;



class Testvocacional extends StatefulWidget {
  @override
  _TestvocacionalState createState() => _TestvocacionalState();
}

class _TestvocacionalState extends State<Testvocacional> {

  @override
  Widget build(BuildContext context) {
    
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: GradientAppBar(
        
      ),
      
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.red, Colors.green] )),
          child: ListView(
          
            children: <Widget>[
              Container(
              height: _screenSize.height * 0.125,
              width: double.infinity,
              color: Colors.white,
              child: Center(child: 
              Text("Test Vocacional",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
              )
              )
              ),
            ],
          ),
        ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_right),
        
        onPressed: (){
          Navigator.pushReplacementNamed(context, 'test1');
        }),
      );
  }
}

class Testvocacional1 extends StatefulWidget {
  @override
  _Testvocacional1State createState() => _Testvocacional1State();
}

class _Testvocacional1State extends State<Testvocacional1> {
  


  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Colors.blue,
      color2: Colors.purple,
      pregunta: "De las computadoras, lo que más me motiva es:",
      next1: () {
      _humanidades = (_humanidades*0);
      _arte = (_arte*0);
      _administracion = (_administracion*0);
      _biologia = (_biologia*0);
      _matematica = (_matematica*0);
      _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test2');
      },
      next2: () {
      _humanidades = (_humanidades*0);
      _arte = (_arte*0);
      _administracion = (_administracion*0);
      _biologia = (_biologia*0);
      _matematica = (_matematica*0);
      _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test2');
      },
      next3: () {
      _humanidades = (_humanidades*0);
      _arte = (_arte*0);
      _administracion = (_administracion*0);
      _biologia = (_biologia*0);
      _matematica = (_matematica*0);
      _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test2');
      },
      next4: () {
      _humanidades = (_humanidades*0);
      _arte = (_arte*0);
      _administracion = (_administracion*0);
      _biologia = (_biologia*0);
      _matematica = (_matematica*0);
      _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test2');
      },
      next5: () {
      _humanidades = (_humanidades*0);
      _arte = (_arte*0);
      _administracion = (_administracion*0);
      _biologia = (_biologia*0);
      _matematica = (_matematica*0);
      _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test2');
      },
      text1: "Conectarme con personas de otras culturas",
      text2: "Hacer uso de software de diseño",
      text3: "Hacer negocios vía Internet",
      text4: "Acceder a información de vanguardia sobre temas cientíﬁcos",
      text5: "Conﬁgurar programas computacionales en mi equipo",
    );
  }
}

class Testvocacional2 extends StatefulWidget {
  @override
  _Testvocacional2State createState() => _Testvocacional2State();
}

class _Testvocacional2State extends State<Testvocacional2> {

  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Colors.purple,
      color2: Colors.red,
      pregunta: "Mejor es tener",
      next1: () {
      _humanidades++;
        Navigator.pushReplacementNamed(context, 'test3');
      },
      next2: () {
      _arte++;
        Navigator.pushReplacementNamed(context, 'test3');
      },
      next3: () {
      _administracion++;
        Navigator.pushReplacementNamed(context, 'test3');
      },
      next4: () {
      _biologia++;
        Navigator.pushReplacementNamed(context, 'test3');
      },
      next5: () {
      _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test3');
      },
      text1: "Una enciclopedia universal",
      text2: "Una guitarra eléctrica",
      text3: "Una calculadora ﬁnanciera",
      text4: "Un microscopio",
      text5: "Un telescopio",
    );
  }
}

class Testvocacional3 extends StatefulWidget {
  @override
  _Testvocacional3State createState() => _Testvocacional3State();
}

class _Testvocacional3State extends State<Testvocacional3> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Colors.red,
      color2: Colors.orange,
      pregunta: "Si tuviera la oportunidad de viajar, preferiría conocer:",
      next1: () {
      _humanidades++;
        Navigator.pushReplacementNamed(context, 'resultados');
      },
      next2: () {
      _arte++;
        Navigator.pushReplacementNamed(context, 'resultados');
      },
      next3: () {
      _administracion++;
        Navigator.pushReplacementNamed(context, 'resultados');
      },
      next4: () {
      _biologia++;
        Navigator.pushReplacementNamed(context, 'resultados');
      },
      next5: () {
      _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'resultados');
      },
      text1: "Las culturas aborígenes del Amazonas",
      text2: "El Museo del Louvre de Paris",
      text3: "La Bolsa de Valores de Nueva York",
      text4: "Las especies protegidas de las Islas Galápagos",
      text5: "El Centro de Investigaciones de la Nasa",
    );
  }
}
class Resultados extends StatefulWidget {
  @override
  _ResultadosState createState() => _ResultadosState();
}

class _ResultadosState extends State<Resultados> {

  @override
  Widget build(BuildContext context) {
    
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.red, Colors.green] )),
          child: ListView(
            children: <Widget>[
              Container(
              height: _screenSize.height * 0.125,
              width: double.infinity,
              color: Colors.white,
              child: Center(child: 
              Text("Resultados",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),))),

              SizedBox(
                height:_screenSize.height * 0.05,
              ),
              Resultadoscard(clase: "Humanidades",resultado:"$_humanidades"),
              SizedBox(
                height:_screenSize.height * 0.02,
              ),          
              Resultadoscard(clase: "Arte",resultado:"$_arte"),
              SizedBox(
                height:_screenSize.height * 0.02,
              ),
              Resultadoscard(clase: "Administración y Economía	",resultado:"$_administracion"),
              SizedBox(
                height:_screenSize.height * 0.02,
              ),
              Resultadoscard(clase: "Biología y Química",resultado:"$_biologia"),
              SizedBox(
                height:_screenSize.height * 0.02,
              ),
              Resultadoscard(clase: "Matemática y Física",resultado:"$_matematica"),
            ],
          ),
        ),
      );
  }
}






























































class Resultadoscard extends StatelessWidget {

  final String clase;
  final String resultado;

  Resultadoscard({
    @required this.clase,
    @required this.resultado,
  });

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Card(
                child: Container(
                alignment: AlignmentDirectional.center,
                padding: EdgeInsets.all(4),
                height: _screenSize.height * 0.1,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Text(clase,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),),
                    ),
                    Expanded(
                      flex: 1,
                                          child: SizedBox(
                        width: 12,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(resultado,textAlign: TextAlign.left,style: TextStyle(fontSize: 20),)),
                  ],
                )),
              );
  }
}