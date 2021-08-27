import 'package:flutter/material.dart';
import 'package:platzi_trip_app/review.dart';

class ReviewList extends StatelessWidget{
  int lengthOfReviews;

  ReviewList(this.lengthOfReviews);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review('assets/img/yo.jpg', 'Ale', '5 review 1 photos','Es una agradable persona :D'),
        Review('assets/img/yo.jpg', 'Ale 2', '3 review 5 photos','Es una desagradable persona D:'),
        Review('assets/img/yo.jpg', 'Ale 3', '1 review 2 photos','Es una triste persona :(')
      ],
    );
  }
}