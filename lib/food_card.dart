import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({this.text,this.image,this.profile});

  final String text;
  final String image;
  final String profile;
  @override
  Widget build(BuildContext context) {
      return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                  0.1,
                  0.9
                ], colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.1)
                ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width:40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                        image: DecorationImage(image:
                        AssetImage(image),
                            fit: BoxFit.cover)
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0,left: 10.0,right: 10.0),
                  child: Text(text,
                    style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Montserrat',
                        color: Colors.white
                    ),),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
