import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trip_app/Place/model/place.dart';
import 'package:platzi_trip_app/User/bloc/bloc_user.dart';
import 'package:platzi_trip_app/User/ui/widgets/image_profile_card.dart';

class ImageShowProfile extends StatelessWidget{
  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);
    Place place1 = new Place(name: 'Mountains', description: 'Some mountains', urlImage: 'assets/img/viewImg/mountain.jpeg', likes: 3);
    Place place2 = new Place(name: 'Mountains stars', description: 'Some mountains in stars', urlImage: 'assets/img/viewImg/mountain_stars.jpeg', likes: 7);
    Place place3 = new Place(name: 'River', description: 'A river in mountains', urlImage: 'assets/img/viewImg/river.jpeg', likes: 2);
    return Container(
      margin: EdgeInsets.only(top: 310.0),
      child: StreamBuilder(
        stream: userBloc.placesStream,
        builder: (context, AsyncSnapshot snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.done:
              return ListView(
                scrollDirection: Axis.vertical,
                children: userBloc.buildPlaces(snapshot.data.documents)
              );
            case ConnectionState.active:
              return ListView(
                  scrollDirection: Axis.vertical,
                  children: userBloc.buildPlaces(snapshot.data.documents)
              );
            case ConnectionState.none:
              return CircularProgressIndicator();
            default:
              return ListView(
                  scrollDirection: Axis.vertical,
                  children: userBloc.buildPlaces(snapshot.data.documents)
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