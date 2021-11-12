import 'package:flutter/material.dart';
import 'package:platzi_trip_app/Place/ui/widgets/gradient_back.dart';
import '../widgets/card_image_list.dart';

class HeaderAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack(height: 290.0),
        CardImageList(),
      ],
    );
  }

}