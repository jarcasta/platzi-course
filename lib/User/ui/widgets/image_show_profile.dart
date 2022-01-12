import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trip_app/Place/model/place.dart';
import 'package:platzi_trip_app/User/bloc/bloc_user.dart';
import 'package:platzi_trip_app/User/model/user.dart';
import 'package:platzi_trip_app/User/ui/widgets/image_profile_card.dart';

class ImageShowProfile extends StatelessWidget{
  User user;
  UserBloc userBloc;

  ImageShowProfile(this.user);

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);

    return Container(
      margin: EdgeInsets.only(top: 310.0),
      child: StreamBuilder(
        stream: userBloc.myPlacesListStream(user.uid),
        builder: (context, AsyncSnapshot snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.done:
              return ListView(
                scrollDirection: Axis.vertical,
                children: userBloc.buildMyPlaces(snapshot.data.documents)
              );
            case ConnectionState.active:
              return ListView(
                  scrollDirection: Axis.vertical,
                  children: userBloc.buildMyPlaces(snapshot.data.documents)
              );
            case ConnectionState.none:
              return CircularProgressIndicator();
            default:
              return ListView(
                  scrollDirection: Axis.vertical,
                  children: userBloc.buildMyPlaces(snapshot.data.documents)
              );          }
        },
      ),
    );
  }
  /*
  ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ImageProfileCard(place1),
          ImageProfileCard(place2),
          ImageProfileCard(place3),
        ],
      )
   */

}