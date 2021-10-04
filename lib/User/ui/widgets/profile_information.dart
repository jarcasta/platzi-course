import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trip_app/User/bloc/bloc_user.dart';

class ProfileInformation extends StatelessWidget{
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
      stream: userBloc.streamFirebase,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.none:
              return CircularProgressIndicator();
            case ConnectionState.active:
              return null;
            case ConnectionState.done:
              return null;
          }
        }
    );
    /*
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
                  image: AssetImage(
                      'assets/img/yo.jpg'
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
                  'Alejandro Ramirez',
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
                  'aleram2002@gmail.com',
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

     */
  }

  Widget showProfileData(AsyncSnapshot snapshot){
    if(!snapshot.hasData || snapshot.hasError){
      print('No login');
      return Container(
        margin: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 50.0
        ),
        child: Column(
          children: [
            CircularProgressIndicator(),
            Text(
              'No se pudo cargar la información'
            )
          ],
        ),
      );
    }else{
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
                    image: AssetImage(
                        'assets/img/yo.jpg'
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
                    'Alejandro Ramirez',
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
                    'aleram2002@gmail.com',
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
}