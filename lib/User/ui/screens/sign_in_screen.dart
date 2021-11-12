import 'package:flutter/material.dart';
import 'package:platzi_trip_app/Place/ui/widgets/gradient_back.dart';
import 'package:platzi_trip_app/Shared/ui/widgets/button_green.dart';
import 'package:platzi_trip_app/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_trip_app/User/model/user.dart';
import 'package:platzi_trip_app/User/ui/widgets/gradient_profile.dart';
import 'package:platzi_trip_app/platzi_trips_cupertino.dart';

class SignInScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SignInScreen();
  }

}

class _SignInScreen extends State<SignInScreen>{

  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession(){
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        if(!snapshot.hasData || snapshot.hasError){
          return signInGoogleUI();
        }else{
          return PlatziTripsCupertino();
        }
      },
    );
  }

  Widget signInGoogleUI(){
    return Scaffold(
      body: Stack(
        alignment: Alignment.center ,
        children: [
          GradientBack(height: null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome \nThis is your travel app',
                style: TextStyle(
                  fontSize: 37,
                  fontFamily: 'ComicNeue',
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              ButtonGreen(
                  text: 'Login with Gmail',
                  onPressed: (){
                    userBloc.signOut();
                    userBloc.signIn().then((FirebaseUser user) {
                      userBloc.updateUserData(User(
                          uid: user.uid,
                          name: user.displayName,
                          email: user.email,
                          photoUrl: user.photoUrl 
                      ));
                    });
                  },
                height: 50.0,
                width: 300.0,
                radius: 10.0,
              )
            ],
          )
        ],
      ),
    );
  }
}