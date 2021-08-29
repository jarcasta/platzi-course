import 'package:flutter/material.dart';
import 'package:platzi_trip_app/profilePage/image_profile_card.dart';

class ImageShowProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 310.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ImageProfileCard('assets/img/viewImg/mountain.jpeg'),
          ImageProfileCard('assets/img/viewImg/mountain_stars.jpeg'),
          ImageProfileCard('assets/img/viewImg/river.jpeg'),
        ],
      ),
    );
  }

}