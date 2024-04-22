import 'package:flutter/material.dart';
import 'package:islamic_app/FirstScreen.dart';
import 'package:islamic_app/My_Theme.dart';
import 'package:islamic_app/home/Quran/Sura_Details_Screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
       initialRoute: First.routeName,
    routes: { First.routeName:(context) => First(),
         SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
    },
       theme: MyTheme.lightMode,);
  }
}

