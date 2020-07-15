import 'package:flutter/material.dart';
import 'package:guiae/src/providers/carreras_info.dart';
import 'package:guiae/src/providers/models.dart';
import 'package:guiae/src/providers/provider.dart';
import 'package:provider/provider.dart';

class ListaFacultadesPage extends StatefulWidget {
  @override
  _ListaFacultadesPageState createState() => _ListaFacultadesPageState();
}

class _ListaFacultadesPageState extends State<ListaFacultadesPage> {
  List universidades;
  final universidadesProvider = new UniversidadesProvider();
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[700],
        title: Text('Facultades'), 
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
      child:
      Image(image: NetworkImage('https://www.neuqueninforma.gob.ar/wp-content/uploads/2019/06/WEB-Convenio-con-la-UNCo-5.jpg'))
      
    );

  }


  Widget _crearlistado(){
    final _screenSize = MediaQuery.of(context).size;
    
      return FutureBuilder(
        future: universidadesProvider.cargarFacultades(context),
        builder: (BuildContext context, AsyncSnapshot<List<Universidad>> snapshot) {
          if(snapshot.hasData){
            universidades = snapshot.data;
            return Container(
             height: _screenSize.height * 0.55 ,
            width: double.infinity,
            child: ListView.builder(
              
              itemCount: universidades.length,
              itemBuilder: (context,i) => _crearItem(universidades[i]),
                ),
          );
          }
          else {
          return Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }


  Widget _crearItem(Universidad universidad,){
      final facultadInfo = Provider.of<CarreraInfo>(context); 
      return Card(
        elevation: 10.0,
        child: InkWell(child:
        Text(universidad.facultad,style: TextStyle(fontSize: 30),),
        onTap: (){
          facultadInfo.facultad = universidad.facultad;
          Navigator.pushNamed(context, 'carreras');

        },
        ),

      );

    }
  }