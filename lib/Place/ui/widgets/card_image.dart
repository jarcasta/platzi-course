import 'package:flutter/material.dart';
import 'package:platzi_trip_app/Shared/ui/widgets/floating_action_button_green.dart';

class CardImageWithIcon extends StatelessWidget{

  final String pathImage;
  final double height;
  final double width;
  final VoidCallback onPressedIcon;
  final IconData icon;
  double left = 20.0;

  CardImageWithIcon({
    Key key,
    @required this.pathImage,
    @required this.height,
    @required this.width,
    @required this.icon,
    @required this.onPressedIcon,
    this.left
  });

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
        left: left,
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
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        card,
        FloatingActionButtonGreen(
          icon: icon,
          onPressed: onPressedIcon,
        )
      ],
    );
  }
  
}