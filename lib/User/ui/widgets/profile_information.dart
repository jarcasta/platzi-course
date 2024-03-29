import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trip_app/User/bloc/bloc_user.dart';
import 'package:platzi_trip_app/User/model/user.dart';

class ProfileInformation extends StatelessWidget{
  User user;

  ProfileInformation(this.user);

  @override
  Widget build(BuildContext context) {
    return showProfileData();
  }
  Widget showProfileData(){
      print('Login');

      return Container(
        margin: EdgeInsets.only(
            top: 130.0
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 0.0,
                left: 20.0,
              ),
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                          user.photoUrl
                    ),
                  ),
                  border: Border.all(color: Colors.white, width: 2.0)
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 20.0,
                  left: 20.0
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'ComicNeue',
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:5.0),
                  ),
                  Text(
                    user.email,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                      fontFamily: 'ComicNeue',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
  }
}