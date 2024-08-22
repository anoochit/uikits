import 'package:flutter/material.dart';

import 'package:uikits2/pages/17_m3/consts.dart';

// lanscape screen

class LandscapeScreen extends StatefulWidget {
  const LandscapeScreen({super.key});

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
        title: const Text("Landscape Screen"),
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
                  ? const Icon(Icons.arrow_circle_left_outlined)
                  : const Icon(Icons.arrow_circle_right_outlined),
            ),
          ),
          const VerticalDivider(
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
