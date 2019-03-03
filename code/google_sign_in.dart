import 'package:flutter/material.dart';
import 'auth.dart';
import 'home_widget.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'FlutterBase',
      home: Scaffold(
          body: Center(
            child: new Stack(children: <Widget>[
              new Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                  image: new AssetImage("actualback1.jpg"),
                    fit: BoxFit.cover,
                ),
                ),
              ),

              new Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: new Image.asset('logo_transparent.png'),
                ),
              ),
              new Align(
                alignment: Alignment(0,.4),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child:  new Text("Welcome to SeatGrab", style: new TextStyle(color: Colors.white, fontSize: 30.0)) ,
                ),
              ),
//              new Align(
//                alignment: Alignment.bottomCenter,
//                child: Padding(
//                  padding: const EdgeInsets.all(2.0),
//                  child:  new Text("We find you a seat so you wont have to.", style: new TextStyle(color: Colors.white, fontSize: 15.0)) ,
//                ),
//              ),
              new Align(
                alignment: Alignment(0,.5),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: new Text("We find you a seat so you wont have to.", style: new TextStyle(color: Colors.white, fontSize: 20.0)) ,
                ),
              ),
              new Align(
                alignment: Alignment.bottomCenter,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: MaterialButton(
                        onPressed: () {
                          authService.googleSignIn();
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()));},
                        color: Colors.cyan,
                        textColor: Colors.black87,
                        child: Text('            Login Here             '),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          )),
    );
  }
}

class UserProfile extends StatefulWidget {
  @override
  UserProfileState createState() => UserProfileState();
}

class UserProfileState extends State<UserProfile> {
  Map<String, dynamic> _profile;
  bool _loading = false;

  @override
  initState() {
    super.initState();
    authService.profile.listen((state) => setState(() => _profile = state));

    authService.loading.listen((state) => setState(() => _loading = state));
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          padding: EdgeInsets.all(20.0), child: Text(_profile.toString())),
      Text(_loading.toString())
    ]);
  }
}

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: authService.user,
        builder: (context, snapshot) {
            return MaterialButton(
              onPressed: () => authService.googleSignIn(),
              color: Colors.white,
              textColor: Colors.black,
              child: Text('Login with DCU account'),
            );
          }
        );
  }
}

