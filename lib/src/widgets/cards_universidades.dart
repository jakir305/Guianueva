
import 'package:flutter/material.dart';
import 'package:guiae/src/Utils/text_style.dart';
import 'package:guiae/src/providers/universidades_info.dart';
import 'package:provider/provider.dart';


class ListCardsUniversidades extends StatelessWidget {
  
  final String nombre;
  final String nombreCompleto;
  final AssetImage icon;

  ListCardsUniversidades({
    @required this.nombre,
    @required this.nombreCompleto,
    @required this.icon,
    });


  @override
  Widget build(BuildContext context) {
    final universidadInfo = Provider.of<UniversidadInfo>(context);
    return Card(
        color: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: InkWell(
            onTap:  () { universidadInfo.universidad = nombre;
              
              
              Navigator.pushNamed(context, 'facultades');
            },
            child: Row(
            children: <Widget>[
              Container(
                width  :80,
                height :80,
                child: 
                Image(image: icon),
              ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(nombre,style: styleNombreUniver,textAlign:TextAlign.center,),
                  Text(nombreCompleto,style: styleNombreComUniver,textAlign:TextAlign.center
                  ),
                ],
              ),
            ),
            
            ],),
        ),
 
      );

      
   
  }

  
    
    


    }
  
