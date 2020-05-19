import 'package:flutter/material.dart';
import 'package:guiae/src/Utils/icono_string_util.dart';
import 'package:guiae/src/Utils/text_style.dart';
import 'package:guiae/src/providers/menu_provider.dart';


class UniversidadesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Universidades'),
          backgroundColor: Colors.tealAccent[700],
          elevation: 0.0,
          
        ),
        
          body: Container(
          padding: EdgeInsets.all(10),
          child: _cards()),
      )
    );
  }

    Widget _cards() {


      return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot){
        

      
         return ListView(
          children: _listaItems(snapshot.data,context),
      ); 


      },
    );

  }

  List<Widget> _listaItems(List<dynamic> data,BuildContext context) {
    
    final List <Widget> opciones = [];
     
    
    data.forEach( (opt) {
    
      final widget = 
      Card(
        color: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: InkWell(
                onTap:  () {
                  Navigator.pushNamed( context, 'facultades' );
                
                  },
                  child: Row(
          
          children: <Widget>[
            
            getIconImage( opt['icon'] ),
            SizedBox(width: 10,),
            Column(
              children: <Widget>[
                Text(opt['nombre'],style:styleUnivesidades,),
                Text(opt['nombreCompleto']),
                
              ],
            ),
            
            
            ],),
        ),
 
      );
      
      opciones..add (widget)
              ..add(SizedBox(height: 10,));


    });

    return opciones;

    
  
    }

    

  

}




