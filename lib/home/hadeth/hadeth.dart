import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../My_Theme.dart';
import '../../Providers/app_config_provider.dart';
import 'item_hadth_name.dart';


class hadethTap extends StatefulWidget{
  @override
  State<hadethTap> createState() => _hadethTapState();
}

class _hadethTapState extends State<hadethTap> {

 List<Hadeth> ahadethlist=[];

  @override
  Widget build(BuildContext context) {
    var providor= Provider.of<AppConfigProvider>(context);
  if(ahadethlist.isEmpty){
    loadFile();
  }
    return Column(
      children: [
        Center(child: Image.asset('assets/images/hadeth_logo.png')),
        Divider(color:providor.isDarkMode()?
        MyTheme.yellowColor:
        MyTheme.primaryLightColor, thickness: 4),
        Text(
          AppLocalizations.of(context)!.hadeth_name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(color: providor.isDarkMode()?
        MyTheme.yellowColor:
        MyTheme.primaryLightColor, thickness: 4),
        ahadethlist.isEmpty?
            Center(child:CircularProgressIndicator(color: MyTheme.primaryLightColor,) ,):
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                  color: MyTheme.primaryLightColor, thickness: 2
              );
            },

            itemBuilder: (context, index) {
    return  ItemHadethName(hadeth: ahadethlist[index],);
    },
    itemCount: ahadethlist.length,
        ),
        ),
      ],
    );
  }

void loadFile()async{
  String hadethContent= await rootBundle.loadString('assets/Files/ahadeth.txt') ;
 List<String>hadethlist = hadethContent.split('#\r\n');
  for(int i=0; i<hadethlist.length;i++){
    List<String>hadethlines = hadethlist[i].split('\n');
  String title=  hadethlines[0];
   hadethlines.removeAt(0);
   Hadeth hadeth=Hadeth(title: title, content:hadethlines );
   ahadethlist.add(hadeth);
   setState(() {

   });


  }
}
}
class Hadeth{
  String title;
  List<String> content;
  Hadeth({required this.title,required this.content});
}