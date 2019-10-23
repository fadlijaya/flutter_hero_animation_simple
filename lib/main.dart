import 'package:flutter/material.dart';
import 'package:flutter_hero_animation_simple/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hero Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HeroAnimation(),
    );
  }
}

