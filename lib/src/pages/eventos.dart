import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class Eventos extends StatefulWidget  {
  @override
  _EventosState createState() => _EventosState();
}

class _EventosState extends State<Eventos> {
  @override
  void initState() { 
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        backgroundColorStart: Colors.purpleAccent,
        backgroundColorEnd: Colors.white,
        title: Text('Eventos'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.purple, Colors.white])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _imageneventos(context),
            _scrollview(context),
          ],
        ),
      ),
    );
  }

  Widget _imageneventos(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
        height: _screenSize.height * 0.4,
        width: double.infinity,
        child: Image(
            image: NetworkImage(
                "https://scontent.fbrc1-1.fna.fbcdn.net/v/t1.0-9/69816312_462369147812097_2051216491545624576_o.jpg?_nc_cat=104&_nc_sid=e3f864&_nc_ohc=vJt2LWQisAgAX9yB4cN&_nc_ht=scontent.fbrc1-1.fna&oh=780f99e3bfd9439b0e3d3823a59aa07d&oe=5F6232B9")));
  }

  Widget _scrollview(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      height: _screenSize.height * 0.45,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _card(context),
          _card(context),
          _card(context),
          _card(context),
          _card(context),
        ],
      ),
    );
  }

  Widget _card(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      width: 110,
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          color: Colors.purple[100],
          child: Wrap(
            children: <Widget>[
              Container(
                height: _screenSize.height * 0.33,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset("Asset/evento.jpg"),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Evento1",
                ),
                subtitle: Text("subtititulo1"),
              )
            ],
          )),
    );
  }
}
