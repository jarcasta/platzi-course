import 'package:flutter/material.dart';

class ButtonGreen extends StatefulWidget{

  final String text;
  double width = 0.0;
  double height = 0.0;
  double radius = 0.0;
  final VoidCallback onPressed;

  ButtonGreen({Key key, @required this.text, @required this.onPressed, this.width, this.height, this.radius});

  @override
  State<StatefulWidget> createState() {
    return _ButtonGreen();
  }

}

class _ButtonGreen extends State<ButtonGreen>{
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(
            top: 30.0,
            left: 20.0,
            right: 20.0
        ),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.radius),
            gradient: LinearGradient(
                colors: [
                  Color(0xFFa7ff84),
                  Color(0XFF1cbb78)
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [
                  0.0,
                  0.6
                ],
                tileMode: TileMode.clamp
            )
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'ComicNeue'
            ),
          ),
        ),
      ),
    );
  }

}