import 'package:flutter/material.dart';
import 'package:platter/Components/rounded_button.dart';
class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Text(
                "Platter",
                style: TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.w400,
                    color: Colors.lime,
                    fontFamily: 'Pacifico'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 140),
              child: RoundedButton(
                title: 'Get Started',
                colors: Colors.black.withOpacity(0.7),
                onPressed: () {
                },
              ),
            ),
          ],
        ),
      ),
//        ),
    );
//
  }
}

//child: BackdropFilter(
//filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//child: Container(
//alignment: Alignment.center,
//color: Colors.grey.withOpacity(0.1),
//child: Text(
//"CHOCOLATE",
//style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//),
//),
//),
//),
