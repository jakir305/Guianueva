import 'package:flutter/material.dart';
import 'package:guiae/src/providers/models.dart';
import 'package:guiae/src/providers/provider.dart';
import 'package:guiae/src/widgets/showdialog.dart';

class ListaDeCarreras extends StatefulWidget {
 
  @override
  _ListaDeCarrerasState createState() => _ListaDeCarrerasState();
}

class _ListaDeCarrerasState extends State<ListaDeCarreras> {
   List universidades;
  final universidadesProvider = new UniversidadesProvider();
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[700],
        title: Text('Carreras'), 
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
       future: universidadesProvider.cargarCarreras(context),
       builder: (BuildContext context, AsyncSnapshot<List<Facultades>> snapshot) {
         

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


  Widget _crearItem(Facultades universidad,){

      return Card(
        elevation: 10.0,
        child: InkWell(child:
        Text(universidad.carrera,style: TextStyle(fontSize: 30),),
        onTap: () => ShowDialog(
          nombre: 'Hola',
        ),
        ),

      );

    }
  }