import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ShowDialog  {
  
  
  final String nombre;
  final AssetImage icon;
  final String url;
  final String duracion;

  ShowDialog({
    @required this.nombre,
    @required this.icon,
    @required this.url,
    @required this.duracion,
    
    });

 alerta (BuildContext context)  {


  
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        content: Column(
          children: <Widget>[
            Text(nombre),
            SizedBox(height: 10.0,),
            Text(duracion),
            SizedBox(height: 10.0,),
            Container(
              width: 50.0,
              height: 50.0,
                child: Image(image: icon),
              ),
          ],
        ),
        
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text('Cerrar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          CupertinoDialogAction(
            child: Text('Ir al link'),
            onPressed: () {
              
            },
          ),
        ],
      );
    },
  );
}


}

