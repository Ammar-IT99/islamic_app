
import 'package:flutter/material.dart';
import 'package:islamic_app/home/Quran/Sura_Details_Screen.dart';

class ItemSuraName extends StatelessWidget {
  String name;
  int index;
  ItemSuraName({required this.name,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
         arguments: SuraDetailsArgs(name: name, index: index));
      },
      child: Text(
        '$name {${index+1}}',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleSmall,),
    );
  }
}

