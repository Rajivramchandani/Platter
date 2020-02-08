import 'package:flutter/material.dart';
import 'package:platter/Components/rounded_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  final _firestore = Firestore.instance;
 void getMessages() async{
   var messages = await _firestore.collection('recipies').getDocuments();
   for (var message in messages.documents){
     print(message.data);
   }
 }
  @override
  Widget build(BuildContext context) {
   getMessages();
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
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
//        ),
    );
  }
}
