import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Analytics extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Analytics> {

  Material MyItems(IconData icon, String heading, int color) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(24.0),

      child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      child: Text(heading,
                        style: TextStyle(
                          color: new Color(color),
                          fontSize: 20.0,
                        ),
                      ),
                    ),

                    Material(
                      color: new Color(color),
                      borderRadius: BorderRadius.circular(24.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                            icon,
                            color: Colors.white,
                            size: 30.0
                        ),
                      ),
                    ),

                  ],
                )
              ],
            ),
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Study Analytics Dashboard',
          style: TextStyle(
            color:Colors.white,
        ),
      ),
    ),
    body:StaggeredGridView.count(
       crossAxisCount: 2,
       crossAxisSpacing: 12.0,
       mainAxisSpacing: 12.0,
       padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
       children: <Widget>[
         MyItems(Icons.access_alarms, "Total Study Time", 0xffb74093),
         MyItems(Icons.favorite, "Your \n Subjects", 0xff26cb3c),
         MyItems(Icons.plus_one, "Add \n Subject", 0xff888888),
         MyItems(Icons.playlist_add_check, "Your \n Notes", 0xff000000), MyItems(Icons.playlist_add_check, "Notes", 0x4b0082),

       ],
    staggeredTiles: [
      StaggeredTile.extent(2, 130.0),
      StaggeredTile.extent(1, 150.0),
      StaggeredTile.extent(1, 150.0),
      StaggeredTile.extent(2, 160.0),

    ],
    ));
  }
}
