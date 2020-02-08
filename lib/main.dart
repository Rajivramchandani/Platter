import 'package:flutter/material.dart';
import 'package:platter/screens/getstarted.dart';
import 'package:platter/screens/home.dart';
import 'screens/landing.dart';
import 'screens/login.dart';

void main() => runApp(Platter());

class Platter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBar(),
    );
  }
}
