import 'package:flutter/material.dart';
import 'package:guiae/src/providers/models.dart';
import 'package:guiae/src/providers/provider.dart';

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
        title: Text('Universidades'), 
        ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 10.0,),
          _imagenfacultad(),
          _crearlistado(),
        ],
      ),
    );
} 

  Widget _imagenfacultad(){
  
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0 ),
      child:
      Image(image: NetworkImage('https://www.neuqueninforma.gob.ar/wp-content/uploads/2019/06/WEB-Convenio-con-la-UNCo-5.jpg'))
      
    );

  }


   Widget _crearlistado(){
    
     return FutureBuilder(
       future: universidadesProvider.cargarFacultades(context),
       builder: (BuildContext context, AsyncSnapshot<List<Universidad>> snapshot) {
         

         if(snapshot.hasData){
           universidades = snapshot.data;
           return Container(
             height: 200.0,
             width: 350.0,
             
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

      return Card(
        elevation: 10.0,
        child: InkWell(child:
        Text(universidad.facultad,style: TextStyle(fontSize: 30),),
        onTap: (){
          Navigator.pushNamed(context, 'carreras');
          


        },
        ),

      );

    }
  }