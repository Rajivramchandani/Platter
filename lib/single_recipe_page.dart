import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'ingredients.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class RecipePage extends StatefulWidget {
  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(20, 30),
                      bottomRight: Radius.elliptical(20, 30)),
                  image: DecorationImage(
                    image: AssetImage('assets/cake.png'),
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.black, BlendMode.softLight),
                  )),
              child: Stack(children: <Widget>[
                Positioned(
                  height: 345,
                  right: 10,
                  child: Row(
                    children: <Widget>[
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.lime,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.favorite,
                            size: 30,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.lime,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              Icons.add_comment,
                              size: 30,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                ),
              ]),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'The cake of bleh',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8, bottom: 8, left: 2),
                        child: Text(
                          'Fresh, sweet and dark',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey[600]),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Card(
                      color: Colors.yellow,
                      elevation: 3,
                    ),
                  ),
                )
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Nutrition Facts >',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 130,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.pink[50],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 10.0,
                        left: 10,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Text(
                            '234',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )),
                        ),
                      ),
                      Positioned(
                        top: 90,
                        left: 15,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Calories',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'kcal',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 130,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.pink[50],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(50)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 10.0,
                        left: 10,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Text(
                            '234',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )),
                        ),
                      ),
                      Positioned(
                        top: 90,
                        left: 21,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Carbo',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'g',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 130,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.pink[50],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(50)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 10.0,
                        left: 10,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Text(
                            '234',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )),
                        ),
                      ),
                      Positioned(
                        top: 90,
                        left: 19,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Protein',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'g',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 130,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.pink[50],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(50)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 10.0,
                        left: 10,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Text(
                            '234',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )),
                        ),
                      ),
                      Positioned(
                        top: 90,
                        left: 27,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Fats',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'g',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/timer.png'))),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
//                    Icon(FeatherIcons.clock),
                          Text('5',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                            'Minute',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/serve.png'))),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('3',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                            'Servings',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/control.png'))),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Easy',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                            'Level',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 0.7,
              height: 8,
            ),
            TabBar(
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.pink,
              indicatorColor: Colors.lime,
              indicatorWeight: 5,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  text: 'Ingredients',
//                  child: Container(
//                    height: 20,
//                    width: 20,
//                    decoration: BoxDecoration(
//                      image: DecorationImage(
//                        image: AssetImage('assets/diet.png')
//                      )
//                    ),
//
//                  ),
                ),
                Tab(
                  text: 'Directions',
                ),
                Tab(
                  text: 'Tricks',
                ),
              ],
            ),
            Divider(
              height: 2,
              thickness: 0.7,
            ),
            Container(
              height: 310,
              child: TabBarView(children: <Widget>[
                IngredientsPage(),
                Text('kkk'),
                Text('kkk'),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
