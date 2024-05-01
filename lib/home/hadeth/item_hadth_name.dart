
import 'package:flutter/material.dart';
import 'package:islamic_app/home/Quran/Sura_Details_Screen.dart';
import 'package:islamic_app/home/hadeth/Hadeth_Details_Screen.dart';
import 'package:islamic_app/home/hadeth/hadeth.dart';

class ItemHadethName extends StatelessWidget {
  Hadeth hadeth;
  ItemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: (){
         Navigator.of(context).pushNamed(HadethDetailsScreen.routeName,
         arguments: hadeth
             );
      },
      child: Text(
        hadeth.title,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleSmall,),
    );
  }
}

