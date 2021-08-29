import 'package:flutter/material.dart';

class IconProfileButton extends StatelessWidget{
  IconData iconButton;
  bool isActive;
  double buttonSize;

  IconProfileButton(this.iconButton, this.isActive, this.buttonSize);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 16.0,
        left: 24.0
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
              icon: Icon(iconButton),
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }

}