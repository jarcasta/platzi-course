import 'dart:io';

import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trip_app/Place/ui/screens/add_place_screen.dart';
import 'package:platzi_trip_app/User/bloc/bloc_user.dart';
import 'package:platzi_trip_app/User/ui/widgets/icon_profile_button.dart';

class ProfileIconsBar extends StatelessWidget{
  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    File image;
    userBloc = BlocProvider.of(context);
    return Container(
      margin: EdgeInsets.only(
        top: 240.0,
        left: 70.0
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconProfileButton(Icons.vpn_key, false, 60.0, () => {}),
          IconProfileButton(Icons.add, true, 60.0, () => {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => AddPlaceScreen(image: image)))
          }),
          IconProfileButton(Icons.exit_to_app, false, 60.0, () => {
            userBloc.signOut()
          }),
        ],
      ),
    );
  }

}