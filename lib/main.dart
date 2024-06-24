import 'package:flutter/material.dart';
import 'package:islamic_app/FirstScreen.dart';
import 'package:islamic_app/My_Theme.dart';
import 'package:islamic_app/Providers/app_config_provider.dart';
import 'package:islamic_app/home/Quran/Sura_Details_Screen.dart';
import 'package:islamic_app/home/hadeth/Hadeth_Details_Screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: MyApp())
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
      debugShowCheckedModeBanner: false,
      initialRoute: First.routeName,
      routes: {
        First.routeName: (context) => const First(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => const HadethDetailsScreen(),
      },
      theme: MyTheme.lightMode,
      darkTheme: MyTheme.darkMode,
      themeMode:provider.appTheme,
    );
  }
}
