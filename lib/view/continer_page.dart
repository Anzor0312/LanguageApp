import 'package:flutter/material.dart';
import 'home_page.dart';
import 'kontakt_page.dart';
import 'korzinka_page.dart';
import 'like_page.dart';

class ContinerPage extends StatefulWidget {
  const ContinerPage({super.key});

  @override
  State<ContinerPage> createState() => _ContinerPageState();
}

class _ContinerPageState extends State<ContinerPage> {
    int _currerntIndex = 0;
  final List<Widget> _screens = [
  const  HomePage(),
  const  LikePage(),
  const  KontaktePage(),
  const  KorzinkaPage()

   
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: _screens[_currerntIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currerntIndex,
            iconSize: 35,
            selectedItemColor: Colors.deepPurple,
            type: BottomNavigationBarType.fixed,
            items:  [
             const BottomNavigationBarItem(icon:Icon(Icons.home), label: "",backgroundColor: Colors.deepPurpleAccent),
              BottomNavigationBarItem(icon:Image.asset("assets/like.png", ), label: ""),
              BottomNavigationBarItem(icon: Image.asset("assets/profile.png"), label: ""),
              BottomNavigationBarItem(icon: Image.asset("assets/buy.png"), label: ""),
            ],
            onTap: (v) {
              setState(() {
                _currerntIndex = v;
              });
            }));
  }
}