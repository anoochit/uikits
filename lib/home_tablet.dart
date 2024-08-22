import 'package:flutter/material.dart';

import 'package:ms_undraw/ms_undraw.dart';

import 'package:uikits2/const.dart';

// layout for tablet

class HomeTablet extends StatefulWidget {
  const HomeTablet({super.key});

  @override
  State<HomeTablet> createState() => _HomeTabletState();
}

class _HomeTabletState extends State<HomeTablet> {
  int currentItem = 0;

  @override
  Widget build(BuildContext context) {
    var scWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("UI Kits"),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 240,
            child: ListView.builder(
              itemCount: listMainMenu.length,
              itemBuilder: (context, index) {
                var title = listMainMenu[index].title;
                return ListTile(
                  leading: const Icon(Icons.category),
                  title: Text(
                    title,
                    style: TextStyle(
                        fontWeight: (index == currentItem)
                            ? FontWeight.bold
                            : FontWeight.normal),
                  ),
                  trailing: (index == currentItem)
                      ? const Icon(Icons.arrow_forward_ios)
                      : Container(width: 16),
                  onTap: () {
                    setState(() {
                      currentItem = index;
                    });
                  },
                );
              },
            ),
          ),
          const VerticalDivider(),
          SizedBox(
            width: 240,
            child: ListView.builder(
              itemCount: listSubMenu[currentItem].length,
              itemBuilder: (context, index) {
                var submenu = listSubMenu[currentItem];
                return ListTile(
                  leading: const Icon(Icons.category_outlined),
                  title: Text(submenu[index].title),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => submenu[index].widget,
                      ),
                    );
                  },
                );
              },
            ),
          ),
          const VerticalDivider(),
          (scWidth > 960)
              ? Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: scWidth * 0.4,
                        height: scWidth * 0.4,
                        child: UnDraw(
                          illustration: listImageSubMenu[currentItem],
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
