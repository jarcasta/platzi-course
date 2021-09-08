import 'package:flutter/material.dart';

class GradientProfile extends StatelessWidget{
  String title;

  GradientProfile(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF584CD1)
            ],
            begin: FractionalOffset(0.2, 0.1),
            end: FractionalOffset(1.0, 0.5),
            stops: [
              0.0, 0.6
            ],
            tileMode: TileMode.clamp
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20.0),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: 'ComicNeue',
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 280.0, top: 0),
            child: Icon(
              Icons.menu,
              color: Colors.grey,
              size: 32.0,
            ),
          )
        ],
      ),
      alignment: Alignment(-0.5, -0.7),
    );
  }

}