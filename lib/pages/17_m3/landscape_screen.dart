// lanscape screen
import 'package:flutter/material.dart';
import 'package:uikits2/pages/17_m3/consts.dart';

class LandscapeScreen extends StatefulWidget {
  LandscapeScreen({Key? key}) : super(key: key);

  @override
  State<LandscapeScreen> createState() => _LandscapeScreenState();
}

class _LandscapeScreenState extends State<LandscapeScreen> {
  int _currentIndex = 0;
  bool _extened = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Landscape Screen"),
      ),
      body: Row(
        children: [
          NavigationRail(
            extended: _extened,
            destinations: navMenuList
                .map(
                  (item) => NavigationRailDestination(
                    icon: Icon(item.icon),
                    label: Text(item.title),
                  ),
                )
                .toList(),
            selectedIndex: _currentIndex,
            onDestinationSelected: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  _extened = !_extened;
                });
              },
              icon: (_extened)
                  ? Icon(Icons.arrow_circle_left_outlined)
                  : Icon(Icons.arrow_circle_right_outlined),
            ),
          ),
          VerticalDivider(
            width: 0.0,
          ),
          Expanded(
            child: IndexedStack(
              index: _currentIndex,
              children:
                  navMenuList.map((e) => BlankScreen(text: e.title)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
