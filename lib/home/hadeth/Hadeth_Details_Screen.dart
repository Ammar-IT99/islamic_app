import 'package:flutter/material.dart';
import 'package:islamic_app/My_Theme.dart';
import 'package:islamic_app/Providers/app_config_provider.dart';
import 'package:islamic_app/home/hadeth/hadeth.dart';
import 'package:islamic_app/home/hadeth/item_Hadeth_details_Screen.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'Hadeth_Details_Screen';

  const HadethDetailsScreen({super.key});

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {


  @override
  Widget build(BuildContext context) {
    var providor= Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
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
    title:  Text('${args.title}',style: Theme.of(context).textTheme.titleLarge,) ,
    ),
  body:  
      Container(
        margin: EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height*0.06 ,horizontal:MediaQuery.of(context).size.width*0.06 ),
        decoration:  BoxDecoration(
          color: providor.isDarkMode()?
    MyTheme.primaryDarkColor:
    MyTheme.whiteColor,
          borderRadius: BorderRadius.circular(25)
        ),
        child:
            ListView.separated(
          separatorBuilder: (context,index) {
            return Divider(
                color:providor.isDarkMode()?
                MyTheme.yellowColor:
                MyTheme.primaryLightColor, thickness: 6
            );
          },
          itemBuilder:(context,index){
          return ItemHadethDetailsScreen(content:args.content[index]);
        },
    itemCount: args.content.length,
        ),
      ),
    ),
    ]
    );
  }


}
