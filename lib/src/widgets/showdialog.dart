import 'package:flutter/material.dart';



class ShowDialog extends StatelessWidget {
  
  final String nombre;

  ShowDialog({
    @required this.nombre,
    
    });


  @override
  Widget build(BuildContext context) {
    
   

       return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text(nombre),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              

            ],
          ), 

          actions: <Widget>[
            FlatButton(
              textColor: Colors.redAccent,
              child:Text('Cancelar'),
              onPressed: () => Navigator.of(context).pop(),
            ),

            FlatButton(
              textColor: Colors.redAccent,
              child:Text('Ok',),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],

        );
      }

      }

