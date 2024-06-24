
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/My_Theme.dart';
import 'package:islamic_app/Providers/app_config_provider.dart';
import 'package:provider/provider.dart';
class ThemeeBottomSheet extends StatefulWidget{
  const ThemeeBottomSheet({super.key});

  @override
  State<ThemeeBottomSheet> createState() => _ThemeeBottomSheetState();
}

class _ThemeeBottomSheetState extends State<ThemeeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider= Provider.of<AppConfigProvider>(context);
    return Container(
      color: provider.isDarkMode()?
      MyTheme.primaryDarkColor:
      MyTheme.primaryLightColor,
     // margin: const EdgeInsets.all(15),
 child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
     children: [

       InkWell(
         onTap: (){
                provider.ChangeTheme(ThemeMode.dark);
                //change to dark Theme.
         },
         child: provider.isDarkMode()?
         GetSelectedItem(AppLocalizations.of(context)!.dark):
         GetUnSelectedItem(AppLocalizations.of(context)!.dark) ,
       ),
       const SizedBox(height: 10,),
       InkWell(
         onTap: (){
            provider.ChangeTheme(ThemeMode.light);
           //change to Light Theme.
         },
         child: provider.isDarkMode()?
    GetUnSelectedItem(AppLocalizations.of(context)!.light):
                    GetSelectedItem(AppLocalizations.of(context)!.light),
       ),

     ],
 ),
    );

  }

 Widget GetSelectedItem(String text){
   var provider= Provider.of<AppConfigProvider>(context);
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: Theme.of(context).textTheme.titleSmall?.copyWith
              (color: provider.isDarkMode()?
            MyTheme.yellowColor:
            MyTheme.primaryDarkColor,fontWeight:FontWeight.bold)),
        Icon(Icons.check,size: 25,color:provider.isDarkMode()?
        MyTheme.yellowColor:
        MyTheme.primaryDarkColor,)
      ],
    );

 }
  Widget GetUnSelectedItem(String text){
    var provider= Provider.of<AppConfigProvider>(context);
    return
        Container(
          width: double.infinity,
          color: provider.isDarkMode()?
          MyTheme.yellowColor:
          MyTheme.primaryDarkColor,
          child: Text(text,
            style: Theme.of(context).textTheme.titleMedium,),
        );


  }
}