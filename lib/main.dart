import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lengapp/view/continer_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      startLocale:const Locale("uz"),
      saveLocale: true, 
      supportedLocales:
    const [Locale("uz"),Locale("en"),Locale("ru")],
     path:"lib/core/lang" ,child:const MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      debugShowCheckedModeBanner: false,
      home:const ContinerPage(),
    );
  }
}
