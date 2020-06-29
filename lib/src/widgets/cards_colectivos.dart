
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
            onTap:  () { },
            child: Row(
            children: <Widget>[
              Container(
                width  :80,
                height :80,
                child: 
                Icon(Icons.directions_bus),
              ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(lugar,style: styleNombreUniver,textAlign:TextAlign.center,),
                ],
              ),
            ),
            
            ],),
        ),
 
      );

      
   
  }

  
    
    


    }
  
