import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guiae/src/providers/universidades_info.dart';
import 'package:guiae/src/widgets/clouduniversidades.dart';
import 'package:provider/provider.dart';

class ListaDeCarreras extends StatefulWidget {
  @override
  _ListaDeCarrerasState createState() => _ListaDeCarrerasState();
}

class _ListaDeCarrerasState extends State<ListaDeCarreras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[700],
        title: Text('Carreras'),
      ),
      body: Column(
        children: <Widget>[
          _carrerasMostrar(),
        ],
      ),
    );
  }

  Widget _carrerasMostrar() {
    final universidadInfo = Provider.of<UniversidadInfo>(context);
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.85,
      width: double.infinity,
      child: MostrarCarreras(
        documento: universidadInfo.universidad,
      ),
    );
  }
}
