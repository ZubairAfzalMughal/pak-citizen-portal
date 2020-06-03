import 'package:flutter/material.dart';

import 'constant.dart';

class Feedbacks extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isColor;
  Feedbacks({this.icon, this.text, this.isColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 140.0,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: ktextColor, 
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(
            color: kblackColor,
            width: 0.50
          ),
        ),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 100.0,
            top: 40.0,
            child: Icon(
              icon,
              color: isColor ? Colors.green : kopenComplain,
            ),
          ),
          Text(
            text,
            style: TextStyle(
                color: isColor ? Colors.green : kopenComplain,
                fontSize: 15.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
