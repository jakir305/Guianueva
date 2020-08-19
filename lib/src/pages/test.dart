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
        backgroundColorEnd: Color.fromRGBO(231, 76, 60, 1),
        backgroundColorStart: Color.fromRGBO(129, 57, 43, 1),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(129, 57, 43, 1),
          Color.fromRGBO(231, 76, 60, 1)
        ])),
        child: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  height: _screenSize.height * 0.125,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Center(
                      child: Text(
                    "Test Vocacional",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ))),
              SizedBox(
                height: _screenSize.height * 0.05,
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  height: _screenSize.height * 0.5,
                  width: double.infinity,
                  child: Center(
                      child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Text(
                          "Para saber que estudiar "
                          "Completa el test y luego obtendras los resultados."
                          "\n \n Es importante que sepas que el test no es final y consta de solo 29 preguntas,"
                          " por lo tanto no puede llegar a ser exacto.\n\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "''La duda es uno de los nombres de la inteligencia.''",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Fuente2',
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Jorge Luis Borges",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ))),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.arrow_right,
            color: Colors.black,
          ),
          onPressed: () {
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
      color1: Color.fromRGBO(231, 76, 60, 1),
      color2: Color.fromRGBO(155, 89, 182, 1),
      pregunta: "De las computadoras, lo que más me motiva es:",
      next1: () {
        _humanidades = (_humanidades * 0);
        _arte = (_arte * 0);
        _administracion = (_administracion * 0);
        _biologia = (_biologia * 0);
        _matematica = (_matematica * 0);
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test2');
      },
      next2: () {
        _humanidades = (_humanidades * 0);
        _arte = (_arte * 0);
        _administracion = (_administracion * 0);
        _biologia = (_biologia * 0);
        _matematica = (_matematica * 0);
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test2');
      },
      next3: () {
        _humanidades = (_humanidades * 0);
        _arte = (_arte * 0);
        _administracion = (_administracion * 0);
        _biologia = (_biologia * 0);
        _matematica = (_matematica * 0);
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test2');
      },
      next4: () {
        _humanidades = (_humanidades * 0);
        _arte = (_arte * 0);
        _administracion = (_administracion * 0);
        _biologia = (_biologia * 0);
        _matematica = (_matematica * 0);
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test2');
      },
      next5: () {
        _humanidades = (_humanidades * 0);
        _arte = (_arte * 0);
        _administracion = (_administracion * 0);
        _biologia = (_biologia * 0);
        _matematica = (_matematica * 0);
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
      color1: Color.fromRGBO(155, 89, 182, 1),
      color2: Color.fromRGBO(142, 68, 173, 1),
      pregunta: "Mejor es tener",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test3');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test3');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test3');
      },
      next4: () {
        _biologia = _biologia + 1;
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
      color1: Color.fromRGBO(142, 68, 173, 1),
      color2: Color.fromRGBO(41, 128, 185, 1),
      pregunta: "Si tuviera la oportunidad de viajar, preferiría conocer:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test4');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test4');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test4');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test4');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test4');
      },
      text1: "Las culturas aborígenes del Amazonas",
      text2: "El Museo del Louvre de Paris",
      text3: "La Bolsa de Valores de Nueva York",
      text4: "Las especies protegidas de las Islas Galápagos",
      text5: "El Centro de Investigaciones de la Nasa",
    );
  }
}

class Testvocacional4 extends StatefulWidget {
  @override
  _Testvocacional4State createState() => _Testvocacional4State();
}

class _Testvocacional4State extends State<Testvocacional4> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(41, 128, 185, 1),
      color2: Color.fromRGBO(52, 152, 219, 1),
      pregunta: "Me gusta más",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test5');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test5');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test5');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test5');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test5');
      },
      text1: "Disertar al curso sobre una materia que domino",
      text2: "Pintar cuadros al óleo",
      text3: "Hacer gráﬁcas de mis ingresos y gastos mensuales",
      text4: "Hacer experimentos en un laboratorio químico",
      text5: "Armar y desarmar computadores",
    );
  }
}

class Testvocacional5 extends StatefulWidget {
  @override
  _Testvocacional5State createState() => _Testvocacional5State();
}

class _Testvocacional5State extends State<Testvocacional5> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(52, 152, 219, 1),
      color2: Color.fromRGBO(26, 188, 156, 1),
      pregunta: " Las ideas más interesantes están relacionadas con:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test6');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test6');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test6');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test6');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test6');
      },
      text1: "Las Ciencias Sociales",
      text2: "El Arte",
      text3: "La Economía",
      text4: "La Biología",
      text5: "La Física",
    );
  }
}

class Testvocacional6 extends StatefulWidget {
  @override
  _Testvocacional6State createState() => _Testvocacional6State();
}

class _Testvocacional6State extends State<Testvocacional6> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(26, 188, 156, 1),
      color2: Color.fromRGBO(22, 160, 133, 1),
      pregunta: "En una salida a terreno, me interesaría conocer:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test7');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test7');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test7');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test7');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test7');
      },
      text1: "El museo de Historia Natural",
      text2: "El museo de Arte Contemporáneo",
      text3: "La Comisión Económica del Senado",
      text4: "El Instituto Médico Legal (Morgue)",
      text5: "Una Central Hidroeléctrica",
    );
  }
}

class Testvocacional7 extends StatefulWidget {
  @override
  _Testvocacional7State createState() => _Testvocacional7State();
}

class _Testvocacional7State extends State<Testvocacional7> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(22, 160, 133, 1),
      color2: Color.fromRGBO(39, 174, 96, 1),
      pregunta: "Mejor es tener",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test8');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test8');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test8');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test8');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test8');
      },
      text1: "Elaboración del guión",
      text2: "Actuación",
      text3: "Publicidad y marketing",
      text4: "Elección y preservación de los escenarios naturales",
      text5: "Edición de sonido y digitalización",
    );
  }
}

class Testvocacional8 extends StatefulWidget {
  @override
  _Testvocacional8State createState() => _Testvocacional8State();
}

class _Testvocacional8State extends State<Testvocacional8> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(39, 174, 96, 1),
      color2: Color.fromRGBO(46, 204, 113, 1),
      pregunta: "Como tema de conversación preﬁero:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test9');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test9');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test9');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test9');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test9');
      },
      text1: "La comunicación en las parejas",
      text2: "Las diferencias y alcances entre la música clásica y el jazz",
      text3: "Los tratados de Libre Comercio",
      text4: "Las aplicaciones de la biotecnología molecular",
      text5: "El control satelital para autopistas de alta velocidad",
    );
  }
}

class Testvocacional9 extends StatefulWidget {
  @override
  _Testvocacional9State createState() => _Testvocacional9State();
}

class _Testvocacional9State extends State<Testvocacional9> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(46, 204, 113, 1),
      color2: Color.fromRGBO(241, 196, 15, 1),
      pregunta:
          "Para conocer el desarrollo de una cultura, observaría de preferencia",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test10');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test10');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test10');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test10');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test10');
      },
      text1: "El desarrollo del pensamiento ﬁlosóﬁco",
      text2: "El desarrollo de las artes",
      text3: "El crecimiento económico",
      text4: "El progreso de la medicina",
      text5: "Los avances en tecnología e ingeniería",
    );
  }
}

class Testvocacional10 extends StatefulWidget {
  @override
  _Testvocacional10State createState() => _Testvocacional10State();
}

class _Testvocacional10State extends State<Testvocacional10> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(241, 196, 15, 1),
      color2: Color.fromRGBO(243, 156, 18, 1),
      pregunta: "Si tuviese que trabajar en el área agrícola, elegiría ser",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test11');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test11');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test11');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test11');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test11');
      },
      text1: "Supervisor y encargado de recursos humanos y capacitación",
      text2: "Paisajista o diseñador de áreas verdes",
      text3: "Administrador de una empresa exportadora de semillas",
      text4: "Encargado de los procesos de siembra, cultivo y cosecha",
      text5: "Planiﬁcador de un sistema de riego eﬁciente",
    );
  }
}

class Testvocacional11 extends StatefulWidget {
  @override
  _Testvocacional11State createState() => _Testvocacional11State();
}

class _Testvocacional11State extends State<Testvocacional11> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(243, 156, 18, 1),
      color2: Color.fromRGBO(230, 126, 34, 1),
      pregunta: "Preferiría inscribirme en un curso de:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test12');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test12');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test12');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test12');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test12');
      },
      text1: "Idiomas",
      text2: "Malabarismo",
      text3: "Liderazgo",
      text4: "Clonación en mamíferos superiores",
      text5: "Uso de la energía geotérmica",
    );
  }
}

class Testvocacional12 extends StatefulWidget {
  @override
  _Testvocacional12State createState() => _Testvocacional12State();
}

class _Testvocacional12State extends State<Testvocacional12> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(230, 126, 34, 1),
      color2: Color.fromRGBO(211, 84, 0, 1),
      pregunta:
          "Si tuviera que presentar un proyecto artístico, probablemente sería:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test13');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test13');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test13');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test13');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test13');
      },
      text1: "Un ensayo literario",
      text2: "Un cortometraje",
      text3: "Una campaña publicitaria sobre un producto",
      text4: "Un modelo anatómico",
      text5: "Un robot musical",
    );
  }
}

class Testvocacional13 extends StatefulWidget {
  @override
  _Testvocacional13State createState() => _Testvocacional13State();
}

class _Testvocacional13State extends State<Testvocacional13> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(211, 84, 0, 1),
      color2: Color.fromRGBO(192, 57, 43, 1),
      pregunta:
          "Si tuviese que hacer un trabajo de investigación, me inclinaría por:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test14');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test14');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test14');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test14');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test14');
      },
      text1:
          "Los efectos de los medios de comunicación de masas en las persona",
      text2: "La evolución de la música folklórica en nuestro país",
      text3:
          "El impacto de la globalización económica en la producción nacional",
      text4: "Los últimos avances en tratamiento para el cáncer",
      text5: "El desarrollo de la robótica",
    );
  }
}

class Testvocacional14 extends StatefulWidget {
  @override
  _Testvocacional14State createState() => _Testvocacional14State();
}

class _Testvocacional14State extends State<Testvocacional14> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(192, 57, 43, 1),
      color2: Color.fromRGBO(231, 76, 60, 1),
      pregunta:
          "De los siguientes trabajos me resultaría más interesante participar en:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test15');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test15');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test15');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test15');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test15');
      },
      text1: "Un programa de mejoramiento de políticas públicas",
      text2: "El diseño de la escenografía de una obra teatral",
      text3: "Un plan de superación de la pobreza",
      text4: "Una investigación sobre los fármacos contra el virus del Sida",
      text5: "Un proyecto de la gran minería",
    );
  }
}

class Testvocacional15 extends StatefulWidget {
  @override
  _Testvocacional15State createState() => _Testvocacional15State();
}

class _Testvocacional15State extends State<Testvocacional15> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(231, 76, 60, 1),
      color2: Color.fromRGBO(155, 89, 182, 1),
      pregunta: "Me llamaría más la atención el siguiente reportaje:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test16');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test16');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test16');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test16');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test16');
      },
      text1: "Formas de facilitar la comunicación entre las personas",
      text2: "Historia del cine",
      text3: "Fórmulas para crear una micro empresa",
      text4: "La obesidad y sus efectos",
      text5: "Nuevos avances en inteligencia artiﬁcial",
    );
  }
}

class Testvocacional16 extends StatefulWidget {
  @override
  _Testvocacional16State createState() => _Testvocacional16State();
}

class _Testvocacional16State extends State<Testvocacional16> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
        color1: Color.fromRGBO(155, 89, 182, 1),
        color2: Color.fromRGBO(41, 128, 185, 1),
        pregunta: "Cuando camino por la ciudad, me ﬁjo en:",
        next1: () {
          _humanidades = _humanidades + 1;
          Navigator.pushReplacementNamed(context, 'test17');
        },
        next2: () {
          _arte = _arte + 1;
          Navigator.pushReplacementNamed(context, 'test17');
        },
        next3: () {
          _administracion = _administracion + 1;
          Navigator.pushReplacementNamed(context, 'test17');
        },
        next4: () {
          _biologia = _biologia + 1;
          Navigator.pushReplacementNamed(context, 'test17');
        },
        next5: () {
          _matematica = _matematica + 1;
          Navigator.pushReplacementNamed(context, 'test17');
        },
        text1: "El aislamiento urbano",
        text2: "El diseño urbano de sus calles y área verdes",
        text3: "Las ventas del comercio ambulante",
        text4: "El estado de salud de los animales callejeros",
        text5: "La construcción de los nuevos ediﬁcios");
  }
}

class Testvocacional17 extends StatefulWidget {
  @override
  _Testvocacional17State createState() => _Testvocacional17State();
}

class _Testvocacional17State extends State<Testvocacional17> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(41, 128, 185, 1),
      color2: Color.fromRGBO(52, 152, 219, 1),
      pregunta: "En una empresa, el rol que más me acomodaría es:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test18');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test18');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test18');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test18');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test18');
      },
      text1:
          "Encargarme de las relaciones públicas y del bienestar del personal",
      text2: "Diseñar la imagen corporativa y la campaña publicitaria",
      text3: "Administrar las ﬁnanzas",
      text4:
          "Encargarme que el trabajo no atente contra la salud de los trabajadores",
      text5: "Deﬁnir la adquisición de nuevas maquinarias para la producción",
    );
  }
}

class Testvocacional18 extends StatefulWidget {
  @override
  _Testvocacional18State createState() => _Testvocacional18State();
}

class _Testvocacional18State extends State<Testvocacional18> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(52, 152, 219, 1),
      color2: Color.fromRGBO(26, 188, 156, 1),
      pregunta:
          "El rating televisivo debería ser alto frente a la siguiente noticia",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test19');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test19');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test19');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test19');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test19');
      },
      text1: "Discusión en el Senado sobre la legalidad de las sectas",
      text2:
          "Alguien del pais obtiene el Primer Premio en el Festival de Venecia",
      text3:
          "El desempleo puede volverse una enfermedad crónica en la economía nacional",
      text4:
          "Fuerte rebrote de virus respiratorio traerá consecuencias esta primavera",
      text5: "Generadores solares como solución energética",
    );
  }
}

class Testvocacional19 extends StatefulWidget {
  @override
  _Testvocacional19State createState() => _Testvocacional19State();
}

class _Testvocacional19State extends State<Testvocacional19> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(26, 188, 156, 1),
      color2: Color.fromRGBO(22, 160, 133, 1),
      pregunta:
          "Si participara en un campamento experimental en un lugar aislado, preferiría:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test20');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test20');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test20');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test20');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test20');
      },
      text1:
          "Conformar un equipo de apoyo emocional para mantener un ambiente positivo",
      text2:
          "Formar un equipo que elabora un testimonio artístico de su estadía en el lugar",
      text3:
          "Recoger y contabilizar los recursos del grupo para su uso ordenado",
      text4:
          "Atender a las necesidades sanitarias y las condiciones de salud del grupo",
      text5: "Construir el hábitat con los recursos del lugar",
    );
  }
}

class Testvocacional20 extends StatefulWidget {
  @override
  _Testvocacional20State createState() => _Testvocacional20State();
}

class _Testvocacional20State extends State<Testvocacional20> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(22, 160, 133, 1),
      color2: Color.fromRGBO(39, 174, 96, 1),
      pregunta: "De los siguientes temas, el que me parece más atractivo es:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test21');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test21');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test21');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test21');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test21');
      },
      text1: "Hipótesis sobre el poblamiento americano",
      text2: "Estética de las pinturas rupestres",
      text3: "Estrategias de las empresas exitosas",
      text4: "Implicaciones del descubrimiento del ADN",
      text5: "Diseño y optimización de motores de aviones",
    );
  }
}

class Testvocacional21 extends StatefulWidget {
  @override
  _Testvocacional21State createState() => _Testvocacional21State();
}

class _Testvocacional21State extends State<Testvocacional21> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(39, 174, 96, 1),
      color2: Color.fromRGBO(46, 204, 113, 1),
      pregunta: "Me gustaría conocer o haber conocido a:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test22');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test22');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test22');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test22');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test22');
      },
      text1: "Sigmund Freud (médico neurólogo)",
      text2: "Wolfgang A. Mozart (compositor y pianista)",
      text3: "Bill Gate ( empresario , informático y filántropo)​",
      text4: "Pierre y Marie Curie (científicos)",
      text5: "Albert Einstein (físico)",
    );
  }
}

class Testvocacional22 extends StatefulWidget {
  @override
  _Testvocacional22State createState() => _Testvocacional22State();
}

class _Testvocacional22State extends State<Testvocacional22> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(46, 204, 113, 1),
      color2: Color.fromRGBO(241, 196, 15, 1),
      pregunta: "De estos pares de asignaturas preﬁero:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test23');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test23');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test23');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test23');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test23');
      },
      text1: "Historia y Lenguaje",
      text2: "Artes Plásticas y Música",
      text3: "Matemática y Economía",
      text4: "Biología y Química",
      text5: "Matemática y Física",
    );
  }
}

class Testvocacional23 extends StatefulWidget {
  @override
  _Testvocacional23State createState() => _Testvocacional23State();
}

class _Testvocacional23State extends State<Testvocacional23> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(241, 196, 15, 1),
      color2: Color.fromRGBO(243, 156, 18, 1),
      pregunta: "La sección del diario que leería primero es:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test24');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test24');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test24');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test24');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test24');
      },
      text1: "Política",
      text2: "Arte",
      text3: "Economía",
      text4: "Salud",
      text5: "Computación",
    );
  }
}

class Testvocacional24 extends StatefulWidget {
  @override
  _Testvocacional24State createState() => _Testvocacional24State();
}

class _Testvocacional24State extends State<Testvocacional24> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(243, 156, 18, 1),
      color2: Color.fromRGBO(230, 126, 34, 1),
      pregunta: "Podría estar largo rato conversando con:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test25');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test25');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test25');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test25');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test25');
      },
      text1: "Un antropólogo",
      text2: "Un músico",
      text3: "Un empresario",
      text4: "Un médico",
      text5: "Un geólogo",
    );
  }
}

class Testvocacional25 extends StatefulWidget {
  @override
  _Testvocacional25State createState() => _Testvocacional25State();
}

class _Testvocacional25State extends State<Testvocacional25> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(230, 126, 34, 1),
      color2: Color.fromRGBO(192, 57, 43, 1),
      pregunta: "Si pudiera elegir una comunidad de chat, ésta sería:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test26');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test26');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test26');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test26');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test26');
      },
      text1: "Desarrollo y crecimiento personal",
      text2: "Danza y música orienta",
      text3: "Nuevas posibilidades de inversión on line",
      text4: "Desarrollo vitivinícola",
      text5: "Construcción de modelos a escala",
    );
  }
}

class Testvocacional26 extends StatefulWidget {
  @override
  _Testvocacional26State createState() => _Testvocacional26State();
}

class _Testvocacional26State extends State<Testvocacional26> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(192, 57, 43, 1),
      color2: Color.fromRGBO(231, 76, 60, 1),
      pregunta: "Preﬁero ver en televisión:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test27');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test27');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test27');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test27');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test27');
      },
      text1: "El programa “La Belleza del Pensar”",
      text2: "El programa “Maestros de la Música”",
      text3: "Un reportaje sobre “Empresarios Jóvenes”",
      text4: "El programa de salud “Taller de las Ciencias”",
      text5: "Un reportaje sobre “Las Señales Radiales del Universo”",
    );
  }
}

class Testvocacional27 extends StatefulWidget {
  @override
  _Testvocacional27State createState() => _Testvocacional27State();
}

class _Testvocacional27State extends State<Testvocacional27> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(231, 76, 60, 1),
      color2: Color.fromRGBO(155, 89, 182, 1),
      pregunta:
          "Lo que más me llama la atención de la similitud entre monos y seres humanos es que ambos:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test28');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test28');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test28');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test28');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test28');
      },
      text1: "Forman familias",
      text2: "Poseen un alto grado de expresión corporal",
      text3: "Se identiﬁcan con claridad los niveles de liderazgo",
      text4: "Pertenecen a una misma especie en constante evolución",
      text5:
          "Pueden construir sus hábitats con los materiales que tienen a disposición",
    );
  }
}

class Testvocacional28 extends StatefulWidget {
  @override
  _Testvocacional28State createState() => _Testvocacional28State();
}

class _Testvocacional28State extends State<Testvocacional28> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(155, 89, 182, 1),
      color2: Color.fromRGBO(41, 128, 185, 1),
      pregunta: "Como pasajero de un avión comercial, me interesaría:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'test29');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'test29');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'test29');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'test29');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'test29');
      },
      text1: "Conocer a los otros pasajeros y el por qué de sus viajes",
      text2: "Tomar fotografías de las nubes y del paisaje",
      text3:
          "Comparar la relación entre el costo del viaje y calidad del servicio",
      text4:
          "Conocer el impacto contaminante del vuelo en el ecosistema cercano al aeropuerto",
      text5:
          "Conocer los mecanismos y datos de vuelo del instrumental de navegación",
    );
  }
}

class Testvocacional29 extends StatefulWidget {
  @override
  _Testvocacional29State createState() => _Testvocacional29State();
}

class _Testvocacional29State extends State<Testvocacional29> {
  @override
  Widget build(BuildContext context) {
    return ListCardsTest(
      color1: Color.fromRGBO(41, 128, 185, 1),
      color2: Color.fromRGBO(52, 152, 219, 1),
      pregunta: "Si tuviera que adquirir un libro, preferiría uno que:",
      next1: () {
        _humanidades = _humanidades + 1;
        Navigator.pushReplacementNamed(context, 'resultados');
      },
      next2: () {
        _arte = _arte + 1;
        Navigator.pushReplacementNamed(context, 'resultados');
      },
      next3: () {
        _administracion = _administracion + 1;
        Navigator.pushReplacementNamed(context, 'resultados');
      },
      next4: () {
        _biologia = _biologia + 1;
        Navigator.pushReplacementNamed(context, 'resultados');
      },
      next5: () {
        _matematica = _matematica + 1;
        Navigator.pushReplacementNamed(context, 'resultados');
      },
      text1:
          "Describa en detalle el ambiente humano y los caracteres de los personajes",
      text2: "Contenga buena diagramación y fotografías artísticas",
      text3:
          "Trate sobre el liderazgo y la autonomía de los equipos de trabajo",
      text4: "Describa la evolución de los reptiles y anﬁbios del mundo",
      text5: "Contenga temas técnicos y buenos gráﬁcos explicativos",
    );
  }
}

class Resultados extends StatefulWidget {
  @override
  _ResultadosState createState() => _ResultadosState();
}

class _ResultadosState extends State<Resultados> {
  String rhumanidades;
  String rarte;
  String radministracion;
  String rbiologia;
  String rmatematica;

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    if (_humanidades >= 25) {
      rhumanidades = "Muy alto";
    } else if (_humanidades >= 15) {
      rhumanidades = "Alto";
    } else if (_humanidades >= 6) {
      rhumanidades = "Medio";
    } else if (_humanidades <= 5) {
      rhumanidades = "Bajo";
    }

    if (_arte >= 25) {
      rarte = "Muy alto";
    } else if (_arte >= 15) {
      rarte = "Alto";
    } else if (_arte >= 6) {
      rarte = "Medio";
    } else if (_arte <= 5) {
      rarte = "Bajo";
    }

    if (_administracion >= 25) {
      radministracion = "Muy alto";
    } else if (_administracion >= 15) {
      radministracion = "Alto";
    } else if (_administracion >= 6) {
      radministracion = "Medio";
    } else if (_administracion <= 5) {
      radministracion = "Bajo";
    }

    if (_biologia >= 25) {
      rbiologia = "Muy alto";
    } else if (_biologia >= 15) {
      rbiologia = "Alto";
    } else if (_biologia >= 6) {
      rbiologia = "Medio";
    } else if (_biologia <= 5) {
      rbiologia = "Bajo";
    }

    if (_matematica >= 25) {
      rmatematica = "Muy alto";
    } else if (_matematica >= 15) {
      rmatematica = "Alto";
    } else if (_matematica >= 6) {
      rmatematica = "Medio";
    } else if (_matematica <= 5) {
      rmatematica = "Bajo";
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(52, 152, 219, 1),
          Color.fromRGBO(26, 188, 156, 1)
        ])),
        child: ListView(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                height: _screenSize.height * 0.1,
                child: Center(
                    child: Text(
                  "Resultados",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ))),
            SizedBox(
              height: _screenSize.height * 0.02,
            ),
            Resultadoscard(clase: "Humanidades", resultado: rhumanidades),
            SizedBox(
              height: _screenSize.height * 0.01,
            ),
            Resultadoscard(clase: "Arte", resultado: rarte),
            SizedBox(
              height: _screenSize.height * 0.01,
            ),
            Resultadoscard(
                clase: "Administración y Economía", resultado: radministracion),
            SizedBox(
              height: _screenSize.height * 0.01,
            ),
            Resultadoscard(clase: "Biología y Química", resultado: rbiologia),
            SizedBox(
              height: _screenSize.height * 0.01,
            ),
            Resultadoscard(
                clase: "Matemática y Física", resultado: rmatematica),
            Container(
              margin: EdgeInsets.all(40),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.white),
              child: Text(
                "Los resultados solo reflejan una parte pequeña de lo que te puede gustar, ¡Investiga!",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Icon(Icons.exit_to_app),
          onPressed: () {
            Navigator.pushReplacementNamed(context, "/");
          }),
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
    return Container(
        alignment: AlignmentDirectional.center,
        margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
        padding: EdgeInsets.all(10),
        height: _screenSize.height * 0.1,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.white),
        child: Row(
          children: [
            Expanded(
              flex: 10,
              child: Text(
                clase,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: 12,
              ),
            ),
            Expanded(
                flex: 3,
                child: Text(
                  resultado,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ));
  }
}
