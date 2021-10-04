import 'package:flutter/material.dart';

class IconProfileButton extends StatelessWidget{
  final VoidCallback onPressed;
  IconData iconButton;
  bool isActive;
  double buttonSize;

  IconProfileButton(this.iconButton, this.isActive, this.buttonSize, @required this.onPressed);

  void onPressedButton(){

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 16.0,
        left: 40.0
      ),
      height: 50,
      width: 50,
      child: Material(
        color: Colors.transparent,
        child: Center(
          child: Ink(
            decoration: ShapeDecoration(
              color: isActive ? Colors.white : Colors.white60,
              shape: CircleBorder(),
            ),
            child: IconButton(
              onPressed:  onPressed,
              icon: Icon(iconButton),
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }

}