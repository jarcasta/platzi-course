import 'package:flutter/material.dart';
import 'package:platzi_trip_app/User/ui/screens/description_profile.dart';
import 'package:platzi_trip_app/User/ui/widgets/image_show_profile.dart';

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