import 'package:flutter/material.dart';

class TextInputLocation extends StatelessWidget{

  final String hintText;
  final TextEditingController controller;
  final IconData icon;

  TextInputLocation({
    Key key,
    @required this.hintText,
    @required this.controller,
    @required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: TextField(
        controller: controller,
        style: TextStyle(
          fontSize: 15.0,
          fontFamily: 'ComicNeue',
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: Icon(icon),
          fillColor: Color(0xFFFFFFFF),
          filled: true,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFe5e5e5)),
              borderRadius: BorderRadius.all(Radius.circular(12.0))
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFe5e5e5)),
              borderRadius: BorderRadius.all(Radius.circular(12.0))
          ),
        ),
      ),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),

    );
  }
}