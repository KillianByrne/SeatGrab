import 'package:flutter/material.dart';
class LandingPage extends StatelessWidget {
    @override
    Widget build(BuildContext context){
      return new Material(
        color: Colors.white,
        child: new InkWell(
          onTap: () {
            Navigator.pushNamed(context, './SignInDemo');
          },

          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image.asset('image/dculogo.png'),
              new Text("Welcome to DCU Library", style: new TextStyle(color: Colors.blue[900], fontSize: 20.0, fontWeight: FontWeight.bold)),
              new Text("Please tap the screen to login ", style: new TextStyle(color: Colors.blue[900], fontSize: 15.0, fontWeight: FontWeight.bold)),
              ],
      )
      )
      );}
}