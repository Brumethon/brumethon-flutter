import 'package:flutter/material.dart';

class ThemeBrumaire {

  static ThemeData getTheme() {
    return ThemeData(
      backgroundColor: Color.fromRGBO(124, 153, 172, 1),
      primaryColor: Color.fromRGBO(202, 240, 248, 1),
      accentColor: Colors.black,
      highlightColor: Color(0xFF007A99),
      cardColor: Color.fromRGBO(157, 157, 157, 1),
    );
  }

}