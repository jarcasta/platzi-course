import 'dart:io';
import 'package:flutter/material.dart';
import 'package:platzi_trip_app/Place/ui/widgets/gradient_back.dart';

class AddPlaceScreen extends StatefulWidget{
  File image;

  AddPlaceScreen({Key key, this.image});

  @override
  State createState() {
    return _AddPlaceScreen();
  }
}

class _AddPlaceScreen extends State<AddPlaceScreen>{
  @override
  Widget build(BuildContext context) {
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
              )
            ],
          ),
        ],
      ),
    );
  }
}