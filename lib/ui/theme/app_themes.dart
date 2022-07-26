import 'package:flutter/material.dart';


class AppThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark(),
    textTheme: TextTheme(
      // Header with grey
      headline1: TextStyle(
        fontSize: 25,
        color: Colors.grey,
        fontWeight: FontWeight.bold,
      ),
      // Header with white
      headline2: TextStyle(
        fontSize: 25,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      // Sub header wit grey
      subtitle1: TextStyle(
        fontSize: 20,
        color: Colors.grey,
        fontWeight: FontWeight.normal,
      ),
      // Sub header with white
      subtitle2: TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
      // Text on all the button types
      button: TextStyle(
        fontSize: 16,
        color: Colors.red,
        fontWeight: FontWeight.normal,
      ),
    ),
    
  );

  static final ligtTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
    fontFamily: 'Georgina',
    textTheme: TextTheme(
      // Header with grey
      headline1: TextStyle(
        fontSize: 25,
        color: Colors.grey,
        fontWeight: FontWeight.bold,
      ),
      // Header with white
      headline2: TextStyle(
        fontSize: 25,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      // Footer - took the last available heading key
      headline6: TextStyle(
        fontSize: 15,
        color: Colors.white,
      ),
      // Sub header with grey
      subtitle1: TextStyle(
        fontSize: 20,
        color: Colors.grey,
        fontWeight: FontWeight.normal,
      ),
      // Sub header with white
      subtitle2: TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
    ),
    
  );
}
