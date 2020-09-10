import 'package:flutter/material.dart';
import 'package:guiae/src/providers/carreras_info.dart';
import 'package:provider/provider.dart';

class ListCardsCarreras extends StatelessWidget {
  final Color color = new Color.fromRGBO(11, 174, 212, 1);
  final String carreras;
  final String facultad;
  final VoidCallback link;

  ListCardsCarreras({
    @required this.carreras,
    this.facultad,
    this.link,
  });

  @override
  Widget build(BuildContext context) {
    final carreraInfo = Provider.of<CarreraInfo>(context);
    return Container(
      decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 1.0,
            spreadRadius: 0.0,
            offset: Offset(3.0, 3.0), // shadow direction: bottom right
          )
        ],
      ),
      child: Card(
        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
        color: Colors.white,
        elevation: 10.0,
        child: GestureDetector(
          onTap: () {
            carreraInfo.carrera = carreras;
            Navigator.pushNamed(context, 'detalles');
          },
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 1,
                    ),
                    Text(
                      carreras,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "MMedium",
                        fontSize: 16.0,
                        color: Colors.black87,
                      ),
                    ),
                    Container(
                      child: Text(
                        facultad,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "MMedium",
                          fontSize: 13,
                          color: color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 1.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
