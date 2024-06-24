
import 'package:flutter/material.dart';
import 'package:islamic_app/Providers/app_config_provider.dart';
import 'package:islamic_app/home/Quran/quran_tap.dart';
import 'package:islamic_app/home/radio/radio_tap.dart';
import 'package:islamic_app/home/sebha/sebha.dart';
import 'package:provider/provider.dart';
import 'home/hadeth/hadeth.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'home/settings/setting_tap.dart';

class First extends StatefulWidget {
  static const String routeName = 'First_Screen';

  const First({super.key});
  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
   int  Selectindex=0;

  @override
  Widget build(BuildContext context) {
    var providor= Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        providor.isDarkMode()?
    Image.asset(
      'assets/images/back_Ground_Dark.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    )
        :
    Image.asset(
    'assets/images/Home_background.png',
    width: double.infinity,
    height: double.infinity,
    fit: BoxFit.fill,
    ),

        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title:  Text(AppLocalizations.of(context)!.app_title,style: Theme.of(context).textTheme.titleLarge,) ,
          ),
       bottomNavigationBar: Theme(
         data: Theme.of(context).copyWith(
           canvasColor: Theme.of(context).primaryColor
         ),
         child: BottomNavigationBar(
           currentIndex: Selectindex,
          onTap: (index){
             Selectindex=index;
             setState(() {

             });
          },
          items:  [
             BottomNavigationBarItem(icon:const ImageIcon(AssetImage('assets/images/quran.png') )
             ,label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(icon:const ImageIcon(AssetImage('assets/images/quran-quran-svgrepo-com.png') )
                ,label:  AppLocalizations.of(context)!.hadeth),
            BottomNavigationBarItem(icon:const ImageIcon(AssetImage('assets/images/sebha.png') )
                ,label:  AppLocalizations.of(context)!.sebha),
            BottomNavigationBarItem(icon:const ImageIcon(AssetImage('assets/images/radio.png') )
                ,label:  AppLocalizations.of(context)!.radio),
            BottomNavigationBarItem(icon:Icon(Icons.settings),
                 label:  AppLocalizations.of(context)!.settings),
           ],
         ),
       ),
       body:taps[Selectindex], )
      ],
    );
  }
List<Widget> taps=[  QuranTap(),hadethTap(),sebhaTap(),radiotap(),settingstap()];
}
