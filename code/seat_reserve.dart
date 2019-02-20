//Working seat_Reserve class


import 'package:flutter/material.dart';
import  'dart:math';
import 'study_page.dart';

class SeatReserve extends StatefulWidget {
  @override
  _MySeatReserveState createState() => _MySeatReserveState();
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

  @override
  Widget build(BuildContext context) {
    final size = 200.0 - 25.0 * _breathe;
    return Scaffold(
        appBar: AppBar(
          title: Text('Tap the symbol to reserve a seat',
            style: TextStyle(
              color:Colors.white,
            ),
          ),),
        body: Center(
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
        ));
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