import 'package:flutter/material.dart';
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
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      color: Colors.white,
      elevation: 20,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
        50.0,
      )),
      child: InkWell(
        onTap: () async {
          launch(url);
        },
        child: Container(
          height: 70,
          alignment: AlignmentDirectional.center,
          child: Text(
            lugar,
            style: TextStyle(fontFamily: 'MMedium', fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
