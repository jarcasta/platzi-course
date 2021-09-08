import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  bool buttonPressed = false;

  void onPressedFav(){
    setState(() {
      buttonPressed = !buttonPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Color(0xFF11DA53),
        mini: true,
        tooltip: 'Fav',
        child: Icon(
          buttonPressed ? Icons.favorite : Icons.favorite_border ,
          color: Colors.white,
        ),
        onPressed: onPressedFav
    );
  }
  
}