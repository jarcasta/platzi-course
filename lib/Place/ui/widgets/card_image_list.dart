import 'package:flutter/material.dart';
import 'package:platzi_trip_app/Place/ui/widgets/card_image.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage('assets/img/viewImg/beach.jpeg'),
          CardImage('assets/img/viewImg/beach_palm.jpeg'),
          CardImage('assets/img/viewImg/mountain.jpeg'),
          CardImage('assets/img/viewImg/mountain_stars.jpeg'),
          CardImage('assets/img/viewImg/sunset.jpeg'),
          CardImage('assets/img/viewImg/river.jpeg'),
        ],
      ),
    );
  }

}