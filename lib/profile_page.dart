import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height / 2.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(60, 50),
              bottomRight: Radius.elliptical(60, 50)),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.pink[100], Colors.limeAccent.shade100],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[500],
              blurRadius: 10.0, // soften the shadow
              spreadRadius: 1.0, //extend the shadow
              offset: Offset(
                0.0, // Move to right 10  horizontally
                1.0, // Move to bottom 10 Vertically
              ),
            )
          ],
        ),
        child: Column(

          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: MediaQuery.of(context).size.height / 6,
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                  border:
                      Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('assets/cake.png')),
                  shape: BoxShape.circle,
                  color: Colors.redAccent,
                ),
              ),
            ),
            Text(
              'Riya Chaudhary',
              style: TextStyle(
                fontFamily: 'Source_Serif_pro',
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Chef at Michelin, Foodie',
              style: TextStyle(fontStyle: FontStyle.italic,
                  color: Colors.grey[700],
              fontFamily: 'Satisfy',
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      '240',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Recipes',
                      style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey),
                    )
                  ],
                ),

                Column(
                  children: <Widget>[
                    Text(
                      '240',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Recipes',
                      style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: <Widget>[

              ],
            )
          ],
        ),
      )
    ]));
  }
}
