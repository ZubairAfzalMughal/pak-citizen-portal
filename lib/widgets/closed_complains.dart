import 'package:flutter/material.dart';

import '../constant.dart';

class ClosedComplains extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
            left: 90.0,
            top: 35.0,
            child: Icon(
              Icons.check_circle,
              color: kwhiteColor,
            )),
        Text(
          'Closed\nComplains',
          style: TextStyle(color: kwhiteColor, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
