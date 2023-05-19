import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lengapp/view/home_page.dart';
import 'package:provider/provider.dart';
import '../provider/home_provider.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      builder: (context, child) {
        return _newScaffold(context);
      },
    );
    
  }

  Scaffold _newScaffold(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ));
            context.watch<HomeProvider>().setstate();
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
        ),
        title: Text("lang".tr()),
      ),
      body: Column(
        children: [
          CheckboxListTile(
            title: const Text("Uzbek"),
            value: context.watch<HomeProvider>().lang == "uz" ? true : false,
            onChanged: (v) async {
              await context.setLocale(const Locale("uz"));
              Future.delayed(Duration.zero).then(
                  (value) => {context.read<HomeProvider>().setState("uz")});
            },
          ),
          CheckboxListTile(
            title: const Text("English"),
            value: context.watch<HomeProvider>().lang == "en" ? true : false,
            onChanged: (v) async {
              await context.setLocale(const Locale("en"));
              Future.delayed(Duration.zero).then(
                  (value) => {context.read<HomeProvider>().setState("en")});
            },
          ),
          CheckboxListTile(
            title: const Text("Russian"),
            value: context.watch<HomeProvider>().lang == "ru" ? true : false,
            onChanged: (v) async {
              await context.setLocale(const Locale("ru"));
              Future.delayed(Duration.zero).then(
                  (value) => {context.read<HomeProvider>().setState("ru")});
            },
          )
        ],
      ),
    );
  }
}
