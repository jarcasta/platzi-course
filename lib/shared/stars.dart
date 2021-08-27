import 'package:flutter/material.dart';

class Stars extends StatelessWidget{
  double topValue;
  double size;

  Stars(this.topValue, this.size);

  @override
  Widget build(BuildContext context) {
    final star_border = Container(
      margin: EdgeInsets.only(
        top: topValue,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
        size: size
      ),
    );

    final star_half = Container(
      margin: EdgeInsets.only(
        top: topValue,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
        size: size
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: topValue,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: size,
      ),
    );

    return Row(
      children: <Widget>[
        star,
        star,
        star,
        star_half,
        star_border
      ],
    );
  }
}