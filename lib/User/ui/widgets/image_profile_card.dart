import 'package:flutter/material.dart';
import 'package:platzi_trip_app/Place/model/place.dart';
import 'package:platzi_trip_app/Shared/ui/widgets/floating_action_button_green.dart';

class ImageProfileCard extends StatelessWidget{
  Place place;

  ImageProfileCard(this.place);

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
                place.urlImage,
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
                  place.name,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      fontFamily: 'ComicNeue'
                  ),
                ),
                Container(margin: EdgeInsets.only(top: 5.0),),
                Text(
                  place.description,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: 'ComicNeue'
                  ),
                ),
                Container(margin: EdgeInsets.only(top: 5.0),),
                Text(
                  'Likes: ${place.likes}',
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
        FloatingActionButtonGreen(icon: Icons.favorite_border,)
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