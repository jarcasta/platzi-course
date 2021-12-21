import 'package:flutter/material.dart';
import 'package:platzi_trip_app/Place/ui/widgets/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = 300.0;
    double height = 250.0;
    double left = 20.0;
    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImageWithIcon(
            pathImage: 'assets/img/viewImg/beach.jpeg',
            icon: Icons.favorite_border,
            height: height,
            width: width,
            left: left,
          ),
          CardImageWithIcon(
            pathImage: 'assets/img/viewImg/beach_palm.jpeg',
            icon: Icons.favorite_border,
            height: height,
            width: width,
            left: left,
          ),
          CardImageWithIcon(
            pathImage: 'assets/img/viewImg/mountain.jpeg',
            icon: Icons.favorite_border,
            height: height,
            width: width,
            left: left,
          ),
          CardImageWithIcon(
            pathImage: 'assets/img/viewImg/mountain_stars.jpeg',
            icon: Icons.favorite_border,
            height: height,
            width: width,
            left: left,
          ),
          CardImageWithIcon(
            pathImage: 'assets/img/viewImg/sunset.jpeg',
            icon: Icons.favorite_border,
            height: height,
            width: width,
            left: left,
          ),
          CardImageWithIcon(
            pathImage: 'assets/img/viewImg/river.jpeg',
            icon: Icons.favorite_border,
            height: height,
            width: width,
            left: left,
          ),
        ],
      ),
    );
  }
}
