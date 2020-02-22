import 'package:flutter/material.dart';

class TabFoodCard extends StatefulWidget {
  TabFoodCard({this.foodName,this.profile,this.author,this.img});
  String img;
  String foodName;
  String author;
  String profile;
  @override
  _TabFoodCardState createState() => _TabFoodCardState();
}

class _TabFoodCardState extends State<TabFoodCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20.0),
      elevation: 2,
      child: Container(
        height: 125.0,
        width: 250.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
        ),
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image:
                  DecorationImage(image: AssetImage(widget.img))),
              height: 125.0,
              width: 100.0,
            ),
            SizedBox(width: 20.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Grilled Chicken',
                  style: TextStyle(fontFamily: 'Quicksand'),
                ),
                Text(
                  'with Fruit Salad',
                  style: TextStyle(fontFamily: 'Quicksand'),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: 2.0,
                  width: 75.0,
                  color: Colors.orange,
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 25.0,
                      width: 25.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.5),
                          image: DecorationImage(
                              image: AssetImage(widget.profile))),
                    ),
                    SizedBox(width: 10.0),
                    Text(widget.author,
                        style: TextStyle(fontFamily: 'Quicksand'))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
