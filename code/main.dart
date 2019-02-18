import 'package:flutter/material.dart';
import './pages/landing_page.dart';
import './pages/login_as_user.dart';

void main() {
  runApp(new MaterialApp(
    home: LandingPage(),
    routes: <String, WidgetBuilder> {
      './SignInDemo' : (context) => SignInDemo()
    },
  ));
}
