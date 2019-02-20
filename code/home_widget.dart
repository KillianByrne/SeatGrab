import 'package:flutter/material.dart';
import 'seat_reserve.dart';
import 'map.dart';
import 'analytics.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    SeatReserve(),
    Mapp(),
    Analytics()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DCU Seat Grab'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.event_seat),
            title: new Text('Reserve Seat'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.map),
              title: Text('Find a Seat')
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.equalizer),
            title: new Text('Analytics'),
          )
        ],
      ),
    );
  }
  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;}
      );
    }
  }
