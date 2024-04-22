import 'package:flutter/material.dart';

class MyTheme {
  static Color blackcolor = const Color(0xff242424);
  static Color primarylightColor = const Color(0xffB7935F);
  static Color whiteColor = const Color(0xffF8F8F8);
  static ThemeData lightMode = ThemeData(
    primaryColor: primarylightColor,
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
      backgroundColor: primarylightColor
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
}
