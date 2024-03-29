import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trip_app/Place/model/place.dart';
import 'package:platzi_trip_app/Place/ui/widgets/button_purple.dart';
import 'package:platzi_trip_app/Place/ui/widgets/card_image.dart';
import 'package:platzi_trip_app/Place/ui/widgets/gradient_back.dart';
import 'package:platzi_trip_app/Place/ui/widgets/title_input_location.dart';
import 'package:platzi_trip_app/Shared/ui/widgets/text_input.dart';
import 'package:platzi_trip_app/Shared/ui/widgets/title_header.dart';
import 'package:platzi_trip_app/User/bloc/bloc_user.dart';

class AddPlaceScreen extends StatefulWidget{
  File image;

  AddPlaceScreen({Key key, this.image});

  @override
  State createState() {
    return _AddPlaceScreen();
  }
}

class _AddPlaceScreen extends State<AddPlaceScreen>{

  final _controllerTitlePlace = TextEditingController();
  final _controllerDescriptionPlace = TextEditingController();

  @override
  Widget build(BuildContext context) {
  UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    return Scaffold(
      body: Stack(
        children: [
          GradientBack(height: 350),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top:25.0, left: 10.0),
                child: SizedBox(
                  height: 45.0,
                  width: 45.0,
                  child: IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_left, color: Colors.white, size: 45.0,
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  padding: EdgeInsets.only(top:45.0, left: 10.0),
                  child: TitleHeader(title: 'Add a new place'),
                )
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 120.0, bottom: 20.0),
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: CardImageWithIcon(
                    pathImage: widget.image.path,
                    icon: Icons.camera_alt,
                    width: 350.0,
                    height: 250.0,
                    left: 20.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20.0, top:40.0),
                  child: TextInput(
                    hintText: 'Title',
                    inputType: null,
                    maxLines: 1,
                    controller: _controllerTitlePlace,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: TextInput(
                    hintText: 'Description',
                    inputType: TextInputType.multiline,
                    maxLines: 4,
                    controller: _controllerDescriptionPlace,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: TextInputLocation(
                    hintText: 'Add location',
                    icon: Icons.location_on_outlined
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  width: 40.0,
                  child: ButtonPurple(
                    buttonText: "Add place",
                    onPressed: (){
                      userBloc.currentUser.then((FirebaseUser user) {
                        if(user != null){
                          String uid = user.uid;
                          String path = '${uid}/${DateTime.now().toString()}.jpg';
                          userBloc.uploadFile(path, widget.image).then((StorageUploadTask storageUploadTask) {
                            storageUploadTask.onComplete.then((StorageTaskSnapshot snapshot) {
                              snapshot.ref.getDownloadURL().then((urlImage) {
                                print('URL: ${urlImage}');

                                userBloc.updatePlaceData(Place(
                                  name: _controllerTitlePlace.text,
                                  description: _controllerDescriptionPlace.text,
                                  likes: 0,
                                  urlImage: urlImage
                                )).whenComplete(() {
                                  print('Termino');
                                  Navigator.pop(context);
                                });
                              });
                            });
                          });
                        }
                      });

                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}