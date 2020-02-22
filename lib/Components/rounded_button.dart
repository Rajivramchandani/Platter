import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {
  const RoundedButton({this.colors, this.onPressed, this.title , this.showIcon});

  final String title;
  final Color colors;
  final Function onPressed;
  final Icon showIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: colors,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 300.0,
          height: 65.0,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Lobster'),
              ),
              showIcon,
            ],
          ),
        ),
      ),
    );
  }
}