import 'package:flutter/material.dart';
import 'package:platzi_trip_app/button_purple.dart';
import 'package:platzi_trip_app/shared/stars.dart';
import 'package:platzi_trip_app/review_list.dart';

class DescriptionPlace extends StatelessWidget{

  String namePlace;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              fontFamily: "ComicNeue"
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Stars(322.0,  30.0)
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          color: Colors.black,
          fontFamily: "ComicNeue"
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title_stars,
        description,
        ButtonPurple('Navigate')
      ],
    );
  }
}