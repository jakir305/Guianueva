import 'package:flutter/material.dart';

class ListCardsCarreras extends StatelessWidget {
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
    return Card(
      margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
      color: Colors.white,
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: GestureDetector(
        onTap: link,
        child: Row(
          children: <Widget>[
            /* AnimatedContainer(
              duration: Duration(seconds: 1),
              width: 80,
              height: 80,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  clipBehavior: Clip.hardEdge,
                  child: Image(image: icon)),
            ), */
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
                      fontSize: 25.0,
                      color: Colors.black87,
                    ),
                  ),
                  Container(
                    child: Text(
                      facultad,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "MMedium",
                        fontSize: 15,
                        color: Colors.black87,
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
    );
  }
}
