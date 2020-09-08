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
    return ClipRRect(
      child: Container(
        width: 330.0,
        height: 55.0,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.white)],
            border: Border.all(color: borderColor, width: 1.5),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: InkWell(
          onTap: () async {
            launch(url);
          },
          child: Container(
            height: 70,
            alignment: AlignmentDirectional.center,
            child: Text(
              lugar,
              style: TextStyle(fontFamily: 'MMedium', fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
