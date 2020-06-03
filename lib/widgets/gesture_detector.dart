import 'package:flutter/material.dart';

class GestButton extends StatelessWidget {
  final Function onTap;
  final Widget child;
  GestButton({this.onTap,this.child});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: child,
    );
  }
}