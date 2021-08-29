import 'package:flutter/material.dart';
import 'package:platzi_trip_app/profilePage/description_profile.dart';
import 'package:platzi_trip_app/profilePage/image_show_profile.dart';

class ProfileTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DescriptionProfile(),
        ImageShowProfile(),
      ],
    );
  }

}