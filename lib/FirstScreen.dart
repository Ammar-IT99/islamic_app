
import 'package:flutter/material.dart';
import 'package:islamic_app/My_Theme.dart';
import 'package:islamic_app/home/Quran/quran_tap.dart';
import 'package:islamic_app/home/radio/radio_tap.dart';
import 'package:islamic_app/home/sebha/sebha.dart';
import 'home/hadeth/hadeth.dart';

class First extends StatefulWidget {

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
   int Selectindex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/Home_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title:  Text('إسلامي',style: Theme.of(context).textTheme.titleLarge,) ,
          ),
       bottomNavigationBar: Theme(
         data: Theme.of(context).copyWith(
           canvasColor: MyTheme.primarylightColor
         ),
         child: BottomNavigationBar(
           currentIndex: Selectindex,
          onTap: (index){
             Selectindex=index;
             setState(() {

             });
          },
          items: const [
             BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/quran.png') )
             ,label: 'quran'),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/quran-quran-svgrepo-com.png') )
                ,label: 'hadeth'),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/sebha.png') )
                ,label: 'sebha'),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/radio.png') )
                ,label: 'radio'),
           ],
         ),
       ),
       body:taps[Selectindex], )
      ],
    );
  }
List<Widget> taps=[  QuranTap(),hadethTap(),sebhaTap(),radiotap()];
}
