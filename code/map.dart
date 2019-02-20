import 'package:flutter/material.dart';

class Mapp extends StatelessWidget{
   @override
   Widget build(BuildContext context) {
   // TODO: implement build
   return Container(
       child: new Row(
         mainAxisSize: MainAxisSize.max,
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
            new Column(mainAxisAlignment: MainAxisAlignment.center,
  children:
  [
    Icon(Icons.event_seat, color: Colors.red, size: 20.0),
    Icon(Icons.event_seat, color: Colors.green, size: 20.0),
    Icon(Icons.event_seat, color: Colors.grey, size: 20.0),
    Icon(Icons.event_seat, color: Colors.blue, size: 20.0),
  ],), new Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children:
  [

  Icon(Icons.crop_square, color: Colors.black, size: 100.0),

  ],
  ),
  new Column(

  mainAxisAlignment: MainAxisAlignment.center,

  children: [

  Icon(Icons.event_seat, color: Colors.red, size: 20.0),
  Icon(Icons.event_seat, color: Colors.green, size: 20.0),
  Icon(Icons.event_seat, color: Colors.grey, size: 20.0),
  Icon(Icons.event_seat, color: Colors.blue, size: 20.0),

             ],
        ),
       ],
      ),
     );
    }
  }