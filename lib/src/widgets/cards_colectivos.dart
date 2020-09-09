import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListCardsColectivos extends StatelessWidget {
  final String lugar;
  final String url;
  final Color borderColor = Color(0xffb904795);

  ListCardsColectivos({
    @required this.lugar,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        launch(url);
      },
      child: Container(
          margin: EdgeInsets.only(top: 5.0),
          decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 2.0),
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 1.0,
                spreadRadius: 0.0,
                offset: Offset(1.0, 1.0), // shadow direction: bottom right
              )
            ],
          ),
          child: Container(
            width: 330,
            height: 55,
            child: (Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text(
                  lugar,
                  style: TextStyle(fontFamily: 'MMedium', fontSize: 25),
                )),
              ],
            )),
          ) // child widget, replace with your own
          ),
    );
  }
}
