import 'package:flutter/material.dart';

class ProfileInformation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 130.0
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 0.0,
              left: 20.0,
            ),
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      'assets/img/yo.jpg'
                  ),
                ),
                border: Border.all(color: Colors.white, width: 2.0)
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20.0,
              left: 20.0
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Alejandro Ramirez',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontFamily: 'ComicNeue',
                    fontWeight: FontWeight.w700
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:5.0),
                ),
                Text(
                  'aleram2002@gmail.com',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                      fontFamily: 'ComicNeue',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}