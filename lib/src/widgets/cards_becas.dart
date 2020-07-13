import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class ListCardsBecas extends StatelessWidget {
  

  final String institucion;
  final String nombre;
  final AssetImage icon;
  final Color color;
  final String url;

  ListCardsBecas({
    @required this.institucion,
    this.nombre,
    this.icon,
    this.color,
    this.url,
    });


  @override
  Widget build(BuildContext context) {

    return Card(
        color: Colors.white,
        elevation: 100.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: InkWell(
            onTap: () async{
            launch(url);
            },
            child: Row(
            children: <Widget>[
              
              AnimatedContainer(
                duration: Duration(seconds: 1),
                width  :100,
                height :100,
                child:
                Image(image: icon),
              ),
              SizedBox(width: 20.0,),
              
              Column(
                children: <Widget>[
                SizedBox(height: 1,),
                  Text(nombre,
                  style: TextStyle(
                  fontSize: 20.0,
                  color: color,
                  ),
                ),
              SizedBox(height: 20,),
                Container(
                  child: Text(institucion,
                    overflow: TextOverflow.clip,
                
                    style:TextStyle(
                    fontSize:10,
                    color:Colors.black,),
                    textAlign:TextAlign.center,
                    
                    ),
                ),
              ],
              ),
            ],),
        ),
      );
  }
}
  