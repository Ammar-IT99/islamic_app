import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islamic_app/My_Theme.dart';
class sebhaTap extends StatefulWidget{
  @override
  State<sebhaTap> createState() => _sebhaTapState();
}

class _sebhaTapState extends State<sebhaTap> {
  int counter=0;
 int index=0;
 double angle=0;

  List<String> Zekr=['الحمدلله','الله اكبر','سبحان الله'];

  @override
  Widget build(BuildContext context) {
    return
       Column(
        children: [
         Center(child: GestureDetector(
               onTap: countermethod,
             child: Transform.rotate(angle: angle,
             child: Image.asset('assets/images/Circle.png')))),
          Text('عدد التسبيحات',style: Theme.of(context).textTheme.titleMedium,),
         Container(
               padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
             decoration: BoxDecoration(
               color: MyTheme.primarylightColor,
               borderRadius: BorderRadius.circular(20)
             ),
             child: Text(counter.toString(), style: Theme.of(context).textTheme.titleMedium,)),
          Container(
             margin:const EdgeInsets.fromLTRB(10, 10, 10,10),
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
              decoration: BoxDecoration(
                  color: MyTheme.primarylightColor,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Text(Zekr[index], style: Theme.of(context).textTheme.titleMedium,)),

        ],

      );


  }

countermethod(){
  angle+= 1;
    if(counter==33){
      counter=0;
      if(index<Zekr.length - 1){
        index++;

      }else {
        index=0 ;
      }

    } else {
      counter++;
    }
    setState(() {

    });

}

}