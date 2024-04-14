import 'package:flutter/material.dart';
import 'package:islamic_app/FirstScreen.dart';
import 'package:islamic_app/My_Theme.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: First(),
    theme: MyTheme.lightMode,);
  }
}

