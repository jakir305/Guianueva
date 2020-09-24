import 'package:flutter/material.dart';

class CardMenu extends StatelessWidget {
  final String nombre;
  final VoidCallback link;
  final String image;

  CardMenu({
    @required this.nombre,
    @required this.image,
    @required this.link,
  });

  @override
  Widget build(BuildContext context) {
    final Color color = Color.fromRGBO(30, 16, 50, 0.55);

    final _screenSize = MediaQuery.of(context).size;
    return Expanded(
      child: GestureDetector(
        onTap: link,
        child: Container(
            height: _screenSize.height * 0.125,
            width: double.infinity,
            alignment: AlignmentDirectional.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(color, BlendMode.hardLight),
                    fit: BoxFit.cover,
                    image: AssetImage(
                      image,
                    ))),
            child: Text(
              nombre,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'MExtra',
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 20,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(0, 10.0),
                    blurRadius: 6.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  Shadow(
                    offset: Offset(0, 10.0),
                    blurRadius: 8.0,
                    color: Color.fromARGB(125, 0, 0, 0),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
