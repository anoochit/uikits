import 'package:flutter/material.dart';

import 'package:uikits2/pages/17_materialu/consts.dart';

// potrait screen

class PortraitScreen extends StatefulWidget {
  const PortraitScreen({super.key});

  @override
  State<PortraitScreen> createState() => _PortraitScreenState();
}

class _PortraitScreenState extends State<PortraitScreen> {
  // menu index
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portrait Screen"),
      ),
      // indexed stack
      body: IndexedStack(
        index: _currentIndex,
        children: navMenuList.map((e) => BlankScreen(text: e.title)).toList(),
      ),
      // bottom nav bar
      bottomNavigationBar: NavigationBar(
        height: 60,
        selectedIndex: _currentIndex,
        onDestinationSelected: (value) => setState(() {
          _currentIndex = value;
        }),
        destinations: navMenuList
            .map(
              (item) => NavigationDestination(
                icon: Icon(item.icon),
                selectedIcon: Icon(item.selectedIcon),
                label: item.title,
                tooltip: item.title,
              ),
            )
            .toList(),
      ),
    );
  }
}
