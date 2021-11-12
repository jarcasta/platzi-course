import 'package:flutter/material.dart';
import 'package:platzi_trip_app/Place/ui/widgets/gradient_back.dart';
import 'package:platzi_trip_app/User/ui/widgets/gradient_profile.dart';
import 'package:platzi_trip_app/User/ui/widgets/profile_icons_bar.dart';
import 'package:platzi_trip_app/User/ui/widgets/profile_information.dart';

class HeaderProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack(height: 450.0),
        ProfileInformation(),
        ProfileIconsBar(),
      ],
    );
  }

}