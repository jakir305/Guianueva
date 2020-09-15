import 'package:auto_size_text/auto_size_text.dart';
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
    final _screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () async {
        launch(url);
      },
      child: Container(
          margin: EdgeInsets.only(top: 5.0),
          decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 1.0),
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
            width: _screenSize.width * 0.9,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Center(
                child: (AutoSizeText(
                  lugar,
                  maxLines: 2,
                  minFontSize: 16,
                  maxFontSize: 25,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'MMedium', color: Colors.blueGrey[800]),
                )),
              ),
            ),
          ) // child widget, replace with your own
          ),
    );
  }
}
