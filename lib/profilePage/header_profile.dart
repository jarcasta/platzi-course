import 'package:flutter/material.dart';
import 'package:platzi_trip_app/profilePage/gradient_profile.dart';
import 'package:platzi_trip_app/profilePage/profile_icons_bar.dart';
import 'package:platzi_trip_app/profilePage/profile_information.dart';

class HeaderProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientProfile('Profile'),
        ProfileInformation(),
        ProfileIconsBar()
      ],
    );
  }

}