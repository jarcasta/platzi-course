import 'package:flutter/material.dart';
import 'package:platzi_trip_app/Place/model/place.dart';
import 'package:platzi_trip_app/User/ui/widgets/image_profile_card.dart';

class ImageShowProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Place place1 = new Place(name: 'Mountains', description: 'Some mountains', urlImage: 'assets/img/viewImg/mountain.jpeg', likes: 3);
    Place place2 = new Place(name: 'Mountains stars', description: 'Some mountains in stars', urlImage: 'assets/img/viewImg/mountain_stars.jpeg', likes: 7);
    Place place3 = new Place(name: 'River', description: 'A river in mountains', urlImage: 'assets/img/viewImg/river.jpeg', likes: 2);
    return Container(
      margin: EdgeInsets.only(top: 310.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ImageProfileCard(place1),
          ImageProfileCard(place2),
          ImageProfileCard(place3),
        ],
      ),
    );
  }

}