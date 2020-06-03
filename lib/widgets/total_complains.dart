import 'package:flutter/material.dart';

import '../constant.dart';

class TotalComplains extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('20',style: TextStyle(color: kwhiteColor,fontSize: 25.0,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Total Complaints',style: TextStyle(color: kwhiteColor,fontSize: 15.0),),
                        Icon(
                          Icons.store_mall_directory,
                          color: kwhiteColor,
                        ),
                      ],
                    ),
                  ],
          );
  }
}