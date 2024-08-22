import 'package:flutter/material.dart';

import 'package:uikits2/const.dart';
import 'package:uikits2/detail.dart';

// layout for mobile

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI Kits"),
      ),
      body: ListView.builder(
        itemCount: listMainMenu.length,
        itemBuilder: (BuildContext context, int index) {
          var title = listMainMenu[index].title;
          var subMenu = listMainMenu[index].subMenu;
          return ListTile(
            leading: const Icon(Icons.category),
            title: Text(title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SubMenuPage(
                    title: title,
                    submenu: subMenu,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
