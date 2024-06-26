import 'package:flutter/material.dart';
import 'package:islamic_app/My_Theme.dart';
import 'package:islamic_app/Providers/app_config_provider.dart';
import 'package:islamic_app/home/Quran/item_sura_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';


class QuranTap extends StatelessWidget {
  List<String> Suranames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق,",
    "الناس"
  ];
  @override
  Widget build(BuildContext context) {
    var providor= Provider.of<AppConfigProvider>(context);
    return Column(
      children: [
        Center(child: Image.asset('assets/images/Quran_logo.png')),
        Divider(color:providor.isDarkMode()?
            MyTheme.yellowColor:
             MyTheme.primaryLightColor, thickness: 4),
        Text(
          AppLocalizations.of(context)!.sura_name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(color: providor.isDarkMode()?
        MyTheme.yellowColor:
        MyTheme.primaryLightColor, thickness: 4),
        Expanded(
          child: ListView.separated(
           separatorBuilder: (context, index) {
             return Divider(
                 color: providor.isDarkMode()?
                 MyTheme.yellowColor:
                 MyTheme.primaryLightColor, thickness: 2
             );
           },

            itemBuilder: (context, index) {
            return ItemSuraName(name: Suranames[index],index: index,);
          },
       itemCount: Suranames.length, ),
        )
      ],
    );
  }
}
