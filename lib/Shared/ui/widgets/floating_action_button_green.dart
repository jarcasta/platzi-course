import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  final IconData icon;
  final VoidCallback onPressed;

   FloatingActionButtonGreen({
    Key key,
    @required this.icon,
    @required this.onPressed
  });

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  bool buttonPressed = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Color(0xFF11DA53),
        mini: true,
        tooltip: 'Fav',
        child: Icon(
          widget.icon ,
          color: Colors.white,
        ),
        onPressed: widget.onPressed,
      heroTag: null ,
    );
  }
  
}