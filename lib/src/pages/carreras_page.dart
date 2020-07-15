import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guiae/src/providers/models.dart';
import 'package:guiae/src/providers/provider.dart';
import 'package:guiae/src/widgets/showdialog_carreras.dart';


class ListaDeCarreras extends StatefulWidget {
  

  @override
  _ListaDeCarrerasState createState() => _ListaDeCarrerasState();
}

class _ListaDeCarrerasState extends State<ListaDeCarreras> {
  
  List carreras;
  String facultadCarrera;
  List carrerasDetalles;


  final universidadesProvider = new UniversidadesProvider();
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[700],
        title: Text('Carreras'), 
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _imagenfacultad(),
          _crearlistado(),
        ],
      ),
    );
} 

  Widget _imagenfacultad(){
    final _screenSize = MediaQuery.of(context).size;
    
    return Container(
      height: _screenSize.height * 0.3 ,
      width: double.infinity,
      child: Image(image: NetworkImage('https://www.neuqueninforma.gob.ar/wp-content/uploads/2019/06/WEB-Convenio-con-la-UNCo-5.jpg')));
  }
  Widget _crearlistado(){
    final _screenSize = MediaQuery.of(context).size;
    
    return FutureBuilder(
      future: universidadesProvider.cargarCarreras(context),
      builder: (BuildContext context, AsyncSnapshot<List<Facultades>> snapshot) {

      if(snapshot.hasData){
          carreras = snapshot.data;
          return Container(
            height: _screenSize.height * 0.55 ,
            width: double.infinity,
            child: ListView.builder(
              itemCount: carreras.length,
              itemBuilder: (context,i) => _crearItem(carreras[i],),
                ),
          );
          
        }
        else {
        return Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }

  

  Widget _crearItem(Facultades facultad,){
    String _duracion;
    
      // carrerasDetalles = universidadesProvider.cargarDetalles(context);
        return Card(
        elevation: 10.0,
        child: InkWell(child:
        Text(facultad.carrera,style: TextStyle(fontSize: 30),),
        onTap: ()  {
          if(facultad.duracion == null){
            _duracion = '';
          }
          else {
            _duracion = 'Duracion de la carrera: ${facultad.duracion}';
          }
          
          ShowDialog(
            nombre  : facultad.carrera,
            icon    : AssetImage('Asset/unco.png'),
            duracion: _duracion,
            lugar: 'Lugares: ${facultad.lugar}',
            url     : facultad.url, 
          ).alerta(context);
      }
        ),
      );
    }
  }