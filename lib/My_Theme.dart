import 'package:flutter/material.dart';

class MyTheme {
  static Color blackcolor = const Color(0xff242424);
  static Color primaryLightColor = const Color(0xffB7935F);
  static Color whiteColor = const Color(0xffF8F8F8);
  static Color primaryDarkColor = const Color(0xff141A2E);
  static Color yellowColor = const Color(0xffFACC1D);
  static ThemeData lightMode = ThemeData(
    primaryColor:
    primaryLightColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,

          iconTheme: IconThemeData(
            color: Colors.black
          ),
          centerTitle: true
          
      ),
      bottomNavigationBarTheme:BottomNavigationBarThemeData(
        selectedItemColor: blackcolor,
      showUnselectedLabels: true,
      backgroundColor: primaryLightColor
      ) ,
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: blackcolor,
        ),
  titleMedium: TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.w500,
  color: blackcolor,
      ),
        titleSmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: blackcolor,
        ),
      ),
  );

  static ThemeData darkMode = ThemeData(
    primaryColor: primaryDarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme:  AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,

        iconTheme: IconThemeData(
            color: whiteColor
        ),
        centerTitle: true

    ),
    bottomNavigationBarTheme:BottomNavigationBarThemeData(
        selectedItemColor: yellowColor,
        showUnselectedLabels: true,
        backgroundColor: primaryDarkColor
    ) ,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: yellowColor,
      ),
      titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: yellowColor,
      ),
      titleSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: yellowColor,
      ),
    ),
  );
}
