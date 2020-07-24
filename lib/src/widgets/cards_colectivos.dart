
import 'package:flutter/material.dart';
import 'package:guiae/src/Utils/text_style.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class ListCardsColectivos extends StatelessWidget {
  
  final String lugar;
  final String url;
  final Color color;


  ListCardsColectivos({
    @required this.lugar,
    this.url,
    this.color,
    });


  @override
  Widget build(BuildContext context) {

    return Card(
        color: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: InkWell(
            onTap:  () async {
          launch(url);
        },
            child: Row(
            children: <Widget>[
              Icon(LineAwesomeIcons.bus,
              size: 70.0,
              color: color),
              SizedBox(width: 10.0,),
              Text(lugar,style: styleNombreUniver,textAlign:TextAlign.center,),
            
            ],),
        ),
      );
  }
    }
  
