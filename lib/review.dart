import 'package:flutter/material.dart';
import 'package:platzi_trip_app/shared/stars.dart';

class Review extends StatelessWidget{

  String pathImage = 'assets/img/yo.jpg';
  String name = 'Ale';
  String details = '1 review 5 photos';
  String comment = 'Es una agradable persona :D';

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            pathImage
          ),
        )
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Row(
        children: <Widget>[
          Text(
            name,
            style: TextStyle(
                fontFamily: 'ComicNeue',
                fontSize: 17.0
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              right: 5.0
            ),
          ),
          Stars(0.5, 15.0)
        ],
      )
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        details,
        style: TextStyle(
          fontFamily: 'ComicNeue',
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        comment,
        style: TextStyle(
          fontFamily: 'ComicNeue',
          fontSize: 13.0,
          fontWeight: FontWeight.w900
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }

}