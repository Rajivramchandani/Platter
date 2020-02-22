import 'package:flutter/material.dart';

class IngredientsPage extends StatefulWidget {
  @override
  _IngredientsPageState createState() => _IngredientsPageState();
}

class _IngredientsPageState extends State<IngredientsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              leading: CircleAvatar(radius:40,backgroundImage: AssetImage('assets/cake.png'),),
              title: Text('Brocoli'),
            ),
            ListTile(
              leading: CircleAvatar(radius:40,backgroundImage: AssetImage('assets/cake.png'),),
              title: Text('Brocoli'),
            )
          ],
        ).toList(),
      )
    );
  }
}
