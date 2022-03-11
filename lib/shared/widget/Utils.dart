import 'package:flutter/material.dart';

class Utils {

  static double radiusBtn = 12.0;
  static double radiusCard = 20.0;
  static double radiusInternCard = 12.0;
  static double paddingInternCard = 18.0;

  static double heightBtn = 50.0;

  static Icon iconRightArrow(BuildContext context) => Icon(Icons.keyboard_arrow_right_outlined, color: Theme.of(context).primaryColor, size: 30);

  static TextStyle btnTextStyle = TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold);
  static TextStyle smallTextStyle(BuildContext context) => TextStyle(fontSize: 12, color: Theme.of(context).accentColor);



}