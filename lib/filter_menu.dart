import 'package:flutter/material.dart';

class FilterMenu extends StatefulWidget {
  @override
  _FilterMenuState createState() => _FilterMenuState();
}

class _FilterMenuState extends State<FilterMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          height: MediaQuery.of(context).size.height - 120,
          width: MediaQuery.of(context).size.width - 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            backgroundBlendMode: BlendMode.difference,
            color: Colors.grey.withOpacity(0.4)
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Filters', style: TextStyle(fontSize: 40,fontFamily: 'Source_Serif_Pro',
                color: Colors.white),),
                Row(
                  children: <Widget>[

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
