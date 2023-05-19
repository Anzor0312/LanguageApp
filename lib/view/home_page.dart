import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lengapp/provider/home_provider.dart';
import 'package:lengapp/view/info_page.dart';
import 'package:lengapp/view/side_menu_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      builder: (context, child) {
        return _scaffold(context);
      },
    );
  }

  Scaffold _scaffold(BuildContext context) {
    return Scaffold(
        drawer: const SideMenu(),
        appBar: AppBar(),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 68, left: 30),
                  child: Image.asset("assets/vector.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 44, left: 26),
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: 250,
                    height: 60,
                    child: TextField(
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          hintText: "search".tr(),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 25,
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 15),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InfoPage(),
                            ));
                      },
                      icon: const Icon(
                        Icons.language,
                        color: Colors.blueAccent,
                        size: 40,
                      )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 55, left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "order".tr(),
                    style: const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                  Text(
                    "collect".tr(),
                    style: const TextStyle(color: Colors.black, fontSize: 24),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 100,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: IconButton(
                      onPressed: () async {
                        context.read<HomeProvider>().textColrs(0);
                      },
                      icon: Text(
                        "wearable".tr(),
                        style: TextStyle(
                            color: context.watch<HomeProvider>().question[0] ==
                                    false
                                ? Colors.black
                                : Colors.deepPurpleAccent),
                      ),
                    )),
                 Container(
                      width: 110,
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: IconButton(
                        onPressed: () async {
                          context.read<HomeProvider>().textColrs(1);
                        },
                        icon: Text(
                          "laptops".tr(),
                          style: TextStyle(
                              color:
                                  context.watch<HomeProvider>().question[1] ==
                                          false
                                      ? Colors.black
                                      : Colors.deepPurpleAccent),
                        ),
                      )),
                
                Container(
                    width: 110,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: IconButton(
                      onPressed: () async {
                        context.read<HomeProvider>().textColrs(2);
                      },
                      icon: Text(
                        "phones".tr(),
                        style: TextStyle(
                            color: context.watch<HomeProvider>().question[2] ==
                                    false
                                ? Colors.black
                                : Colors.deepPurpleAccent),
                      ),
                    )),
                Container(
                    width: 79,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: IconButton(
                      onPressed: () async {
                        context.read<HomeProvider>().textColrs(3);
                      },
                      icon: Text(
                        "drones".tr(),
                        style: TextStyle(
                            color: context.watch<HomeProvider>().question[3] ==
                                    false
                                ? Colors.black
                                : Colors.deepPurpleAccent),
                      ),
                    )),
              ],
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                      scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 50),
                      child: Card(
                      
                        child: Container(
                          height: 220,
                          width: 270,
                          
                         
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                             
                          ),
                           child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            
                            children: [
                                  CircleAvatar(
                                    radius: 100,
                                    backgroundImage: NetworkImage("https://source.unsplash.com/random/$index"),
                                  ),
                              Text("watch".tr(), style: const TextStyle(color: Colors.black))
                            ],  ),
                          
                        ),
                      ),
                    );
                  },
                ),
            ),
            
          ],
        ));
  }
}
