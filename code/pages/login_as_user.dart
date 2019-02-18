import 'package:flutter/material.dart';
import 'package:test_project/auth.dart';
class SignInDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: 'FlutterBase',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Seat Grab'),
              backgroundColor: Colors.blue,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () => authService.googleSignIn(),
                    color: Colors.white,
                    textColor: Colors.black,
                    child: Text('Login with DCU account')
                  ),
                  MaterialButton(
                   onPressed: () => authService.signOut(),
                   color: Colors.red,
                   textColor: Colors.black,
                   child: Text('Logout')
                  )
                ],
              ),
            )
        )
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
    authService.profile
     .listen((state) => setState(() => _profile = state ));

    authService.loading
        .listen((state) => setState(() => _loading = state ));
  }

  @override
  Widget build(BuildContext context){
    return Column(children: <Widget>[
      Container(
        padding: EdgeInsets.all(20.0),
        child: Text(_profile.toString())
      ),
      Text(_loading.toString())
    ]);
  }
}

class LoginButton extends  StatelessWidget{

  @override
  Widget build(BuildContext context){
    return StreamBuilder(
      stream: authService.user,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return MaterialButton(
              onPressed: () => authService.signOut(),
              color: Colors.red,
              textColor: Colors.black,
              child: Text('Logout'),);
        } else {
          return MaterialButton(
          onPressed: () => authService.googleSignIn(),
          color: Colors.white,
          textColor: Colors.black,
          child: Text('Login with DCU account'),);
        }
      }
    );
  }
}