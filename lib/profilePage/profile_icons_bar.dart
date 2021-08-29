import 'package:flutter/material.dart';
import 'package:platzi_trip_app/profilePage/icon_profile_button.dart';

class ProfileIconsBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 240.0,
        left: 20.0
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconProfileButton(Icons.bookmark_border, true, 50.0),
          IconProfileButton(Icons.card_giftcard_outlined, false, 50.0),
          IconProfileButton(Icons.add, true, 50.0),
          IconProfileButton(Icons.mail_outline, false, 50.0),
          IconProfileButton(Icons.person_outline, false, 50.0),

        ],
      ),
    );
  }

}