import 'package:flutter/material.dart';
import 'package:platzi_trip_app/User/model/user.dart';
import 'package:platzi_trip_app/User/ui/screens/header_profile.dart';

class DescriptionProfile extends StatelessWidget{
  User user;
  DescriptionProfile(@required this.user);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderProfile(user),
      ],
    );
  }

}