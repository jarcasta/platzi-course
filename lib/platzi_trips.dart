import 'package:flutter/material.dart';
import 'package:platzi_trip_app/home_trips.dart';
import 'package:platzi_trip_app/profile_trips.dart';
import 'package:platzi_trip_app/search_trips.dart';

class PlatziTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PlatziTrips();
  }

}

class _PlatziTrips extends State<PlatziTrips>{
  int indexTab = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips(),
  ];

  void onTapTapped(int index){
    setState(() {
      indexTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: widgetsChildren[indexTab],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTab,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ' '
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: ' '
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: ' '
            ),
          ],
        ),
      ),
    );
  }

}