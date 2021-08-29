import 'package:flutter/material.dart';
import 'package:platzi_trip_app/floating_action_button_green.dart';

class ImageProfileCard extends StatelessWidget{
  String pathImage = 'assets/img/viewImg/beach.jpeg';

  ImageProfileCard(this.pathImage);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 220.0,
      width: 345.0,
      margin: EdgeInsets.only(
        top: 40.0,
        left: 20.0,
        right: 40.0,
        bottom: 40.0
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                pathImage,
              )
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow> [
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0)
            )
          ]
      ),
    );

    final centerCard = Stack(
      alignment: Alignment(0.55, 1.3),
      children: [
        Container(
          height: 100.0,
          width: 250.0,
          margin: EdgeInsets.only(right: 85.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              shape: BoxShape.rectangle,
              boxShadow: <BoxShadow> [
                BoxShadow(
                    color: Colors.black38,
                    blurRadius: 15.0,
                    offset: Offset(0.0, 7.0)
                )
              ]
          ),
          child: Container(
            margin: EdgeInsets.only(
              left: 15.0,
              top: 10.0
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lorem ipsum',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      fontFamily: 'ComicNeue'
                  ),
                ),
                Container(margin: EdgeInsets.only(top: 5.0),),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: 'ComicNeue'
                  ),
                ),
                Container(margin: EdgeInsets.only(top: 5.0),),
                Text(
                  'Lorem ipsum 29/08/2021',
                  style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: 'ComicNeue'
                  ),
                ),
              ],
            ),
          )
        ),
        FloatingActionButtonGreen()
      ],
    );

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        card,
        centerCard,
      ],
    );
  }

}