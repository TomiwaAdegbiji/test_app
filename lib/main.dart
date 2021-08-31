import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/swipetabs.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Musically',
      theme: ThemeData(
        // Define the default brightness and colors.
        primaryColor: Colors.white,
        accentColor: Colors.black,
        fontFamily: 'Heveltica',

      ),
      home: SwipeTabBar(),
    );
  }
}
