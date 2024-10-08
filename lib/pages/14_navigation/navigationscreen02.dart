import 'package:flutter/material.dart';

import 'package:uikits2/pages/14_navigation/sample_page.dart';

class NavigationScreen02 extends StatefulWidget {
  const NavigationScreen02({super.key});

  @override
  State<NavigationScreen02> createState() => _NavigationScreen02State();
}

class _NavigationScreen02State extends State<NavigationScreen02> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main"),
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: const [
            Page1(),
            Page2(),
            Page3(),
            Page4(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Page 1'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Page 2'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Page 3'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Page 4'),
        ],
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
