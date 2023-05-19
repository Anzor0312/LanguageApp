import 'package:flutter/material.dart';
import 'package:lengapp/view/info_page.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Row(
              children: [Icon(Icons.settings), Text("settings")],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InfoPage(),
                  ));
            },
            child: const Row(
              children: [Icon(Icons.lens_blur), Text("Til")],
            ),
          )
        ],
      ),
    );
    
  }
}
