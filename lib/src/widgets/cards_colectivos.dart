
import 'package:flutter/material.dart';
import 'package:guiae/src/Utils/text_style.dart';


class ListCardsColectivos extends StatelessWidget {
  
  final String lugar;
  final Icon icon;

  ListCardsColectivos({
    @required this.lugar,
    this.icon,
    });


  @override
  Widget build(BuildContext context) {

    return Card(
        color: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: InkWell(
            onTap:  () { Navigator.pushNamed(context, 'lineas'); },
            child: Row(
            children: <Widget>[
             Icon(Icons.directions_bus,size: 70.0,),
             SizedBox(width: 10.0,),
             Text(lugar,style: styleNombreUniver,textAlign:TextAlign.center,),
            
            ],),
        ),
 
      );

  }


    }
  
