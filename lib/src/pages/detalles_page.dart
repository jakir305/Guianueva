import 'package:flutter/material.dart';

class CarreraDetalles extends StatefulWidget {
  const CarreraDetalles({Key key}) : super(key: key);

  @override
  _CarreraDetallesState createState() => _CarreraDetallesState();
}

class _CarreraDetallesState extends State<CarreraDetalles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola'),
      ),
      body: mostrarCarrera(context),
    );
  }

  mostrarCarrera(BuildContext context) {}
}
