import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/My_Theme.dart';
import 'package:islamic_app/home/Quran/item_sura_details_Screen.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'Sura_Details_Screen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses=[];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
      if(verses.isEmpty){
        loadFiles(args.index);
      }

    return Stack(
      children: [
      Image.asset(
      'assets/images/Home_background.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    ),
    Scaffold(

    appBar: AppBar(
    title:  Text('${args.name}',style: Theme.of(context).textTheme.titleLarge,) ,
    ),
  body:  verses.isEmpty?
      Center(
        child: CircularProgressIndicator(
         color: MyTheme.primarylightColor,
        ),
      ):
      Container(
        margin: EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height*0.06 ,horizontal:MediaQuery.of(context).size.width*0.06 ),
        decoration:  BoxDecoration(
          color: MyTheme.whiteColor,
          borderRadius: BorderRadius.circular(25)
        ),
        child:
            ListView.separated(
          separatorBuilder: (context,index) {
            return Divider(
                color: MyTheme.primarylightColor, thickness: 6
            );
          },
          itemBuilder:(context,index){
          return ItemSuraDetailsScreen(name: verses[index],index: index);
        },
    itemCount: verses.length,
        ),
      ),
    ),
    ]
    );
  }

  void loadFiles(int index)async{
    String content= await rootBundle.loadString('assets/Files/${index+1}.txt') ;
    List<String>lines =content.split('/n');
    for(int i=0;i<lines.length;i++ ){
      print(lines[i]);
    }
       verses=lines;

    setState(() {

    });
    }
}
class SuraDetailsArgs{
  String name;
  int index;
  SuraDetailsArgs({required this.name,required this.index});
}