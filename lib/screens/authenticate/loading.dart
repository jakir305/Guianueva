import 'package:flutter/material.dart';
import 'dart:async';





class Loading extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => new _LoadingState();

}

class _LoadingState extends State<Loading> {
  Timer _timer;
  

  _LoadingState() {
    _timer = new Timer(const Duration(seconds: 4), () {
      setState(() {
        
        
      });
    Navigator.pushReplacementNamed(context, 'home');
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Icon(Icons.add_box),
        ),
      )
    );

    
  }
}