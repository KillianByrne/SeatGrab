//Working seat_Reserve class kill


import 'package:flutter/material.dart';
import  'dart:math';
import 'study_page.dart';

class SeatReserve extends StatefulWidget {   //we used a stateful widget as we needed the class to change throughout the program.
  @override
  _MySeatReserveState createState() => _MySeatReserveState();   //this does little else than create seat reserve's state class(_MyStateReserveState)
}

class _MySeatReserveState extends State<SeatReserve> with TickerProviderStateMixin {
  AnimationController _breathingController;
  var _breathe = 0.0;
  AnimationController _angleController;
  var _angle = 0.0;

  @override
  void initState() {
    super.initState();
    _breathingController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    _breathingController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _breathingController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _breathingController.forward();
      }
    });
    _breathingController.addListener(() {
      setState(() {
        _breathe = _breathingController.value;
      });
    });
    _breathingController.forward();

    _angleController = AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    _angleController.addListener(() {
      setState(() {
        _angle = _angleController.value;
      });
    });
  }

  @override
  void dispose() {
    _breathingController.dispose();
    super.dispose();
  }

  @override                                         // addded a basic build method to create our page with the breathing button, the nav bar at the bottom and the title bar were created in the home_widget and this class is called from that
  Widget build(BuildContext context) {
    final size = 200.0 - 25.0 * _breathe;
    return new Container(
        child: new Stack(
          children: <Widget>[
            new Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(colors:
        [const Color(0xFF5032b6), const Color(0xFFb765d3),],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight)
        )),
        new Align(alignment: Alignment.topCenter,
    child: new Column(
    children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(40.0),
      child: new Text("Tap to Reserve Your Seat!", style: new TextStyle(color: Colors.white, fontSize: 21.0, fontWeight: FontWeight.bold)),
    ),
           ]
          )
        ),
        new Align(alignment: Alignment.center,
          child: GestureDetector(
              onTap: _buttonTap,
              child: Container(
                width: size,
                height: size,
                child: Transform.rotate(
                  angle: 45 / 360 * pi * 2,
                  child: Material(
                    borderRadius: BorderRadius.circular(size / 3),
                    color: Colors.purpleAccent,
                    child: Transform.rotate(
                      angle: _angle,
                      child: Icon(Icons.sync,
                          size: size,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            )
        )],));
  }

  void _buttonTap() {
    if (_angleController.status == AnimationStatus.completed) {
      _angleController.reverse();
    } else if (_angleController.status == AnimationStatus.dismissed) {
      _angleController.forward();
      new Text('Finding your seat...');
      showDialog(
          context: context,
          builder: (BuildContext context){
            return AlertDialog(
                title: new Text("Please make sure your phone is placed on an NFC tag in the library",
                    style: TextStyle(fontWeight: FontWeight. bold, fontFamily: 'Raleway')),
                content: new Text("Are you sure you want to reserve this seat ?"),
                actions: <Widget>[
                  new FlatButton(
                      child: new Text("Yes"),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StudyPage()),
                        );
                      }
                  )
                ]
            );
          }
      );
    }
  }
}