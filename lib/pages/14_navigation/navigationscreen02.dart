import 'package:flutter/material.dart';
import 'package:uikits2/pages/14_navigation/sample_page.dart';

class NavigationScreen02 extends StatefulWidget {
  NavigationScreen02({Key? key}) : super(key: key);

  @override
  _NavigationScreen02State createState() => _NavigationScreen02State();
}

class _NavigationScreen02State extends State<NavigationScreen02> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main", style: TextStyle(color: Colors.black)),
        titleSpacing: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: [
            Page1(),
            Page2(),
            Page3(),
            Page4(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
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
