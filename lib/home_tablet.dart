// layout for tablet
import 'package:flutter/material.dart';
import 'package:ms_undraw/ms_undraw.dart';
import 'package:uikits2/const.dart';

class HomeTablet extends StatefulWidget {
  const HomeTablet({Key? key}) : super(key: key);

  @override
  _HomeTabletState createState() => _HomeTabletState();
}

class _HomeTabletState extends State<HomeTablet> {
  int currentItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UI Kits"),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 280,
            child: ListView.builder(
              itemCount: listMainMenu.length,
              itemBuilder: (context, index) {
                var title = listMainMenu[index].title;
                return ListTile(
                  leading: Icon(Icons.category),
                  title: Text(
                    title,
                    style: TextStyle(fontWeight: (index == currentItem) ? FontWeight.bold : FontWeight.normal),
                  ),
                  trailing: (index == currentItem) ? Icon(Icons.arrow_forward_ios) : Container(width: 16),
                  onTap: () {
                    setState(() {
                      currentItem = index;
                    });
                  },
                );
              },
            ),
          ),
          VerticalDivider(),
          Container(
            width: 280,
            child: ListView.builder(
              itemCount: listSubMenu[currentItem].length,
              itemBuilder: (context, index) {
                var submenu = listSubMenu[currentItem];
                return ListTile(
                  leading: Icon(Icons.category_outlined),
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
          VerticalDivider(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 500,
                  height: 500,
                  child: UnDraw(
                    illustration: listImageSubMenu[currentItem],
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
