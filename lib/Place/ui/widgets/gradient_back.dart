import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget{
  String title = 'Popular';
  double height = 0.0;
  GradientBack({
    Key key,
    this.height
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    if(height == null){
      height = screenHeight;
    }

    return Container(
      height: height,
      width: screenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [
            0.0, 0.6
          ],
          tileMode: TileMode.clamp
        ),
      ),
      child: FittedBox(
        fit: BoxFit.none,
        alignment: Alignment(-1.5, -0.8),
        child: Container(
          width: screenHeight,
          height: screenHeight,
          decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.05),
              borderRadius: BorderRadius.circular(screenHeight/2)
          ),
        ),
      ),
      /*Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: 'ComicNeue',
          fontWeight: FontWeight.bold
        ),
      ),

      alignment: Alignment(-0.9, -0.6),

       */
    );
  }
  
}