import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    // Define the default brightness and colors.
    // brightness: Brightness.dark,
    // accentColor: Colors.cyan[600],
    primaryColor: Color(0xFF599E67),
    backgroundColor: Color(0xFFEFF4F8),
    splashColor: Color(0xFFFFFFFF),
    accentColor: Color(0xFFEFF4F8),
    secondaryHeaderColor: Color(0xFF828282),
    unselectedWidgetColor: Color(0xFF9AA0AC),
    highlightColor: Colors.black,

    // Default font family.
    fontFamily: 'Avenir',

    // Text Theme
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        fontSize: 16.0,
        fontStyle: FontStyle.normal,
      ),
      headline4: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
      headline5: TextStyle(
        fontSize: 16.0,
      ),
      headline6: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
      subtitle1: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w800,
      ),
      subtitle2: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
      bodyText1: TextStyle(
        fontSize: 12.0,
      ),
    ),
  );
}
