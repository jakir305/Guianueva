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
                    colorFilter:
                        ColorFilter.mode(Colors.black38, BlendMode.hardLight),
                    fit: BoxFit.cover,
                    image: AssetImage(
                      image,
                    ))),
            child: Text(
              nombre,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            )),
      ),
    );
  }
}
