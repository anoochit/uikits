import 'package:flutter/material.dart';
import 'package:uikits2/pages/14_navigation/sample_page.dart';

class NavigationScreen03 extends StatefulWidget {
  NavigationScreen03({Key? key}) : super(key: key);

  @override
  _NavigationScreen03State createState() => _NavigationScreen03State();
}

class _NavigationScreen03State extends State<NavigationScreen03> {
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
      drawer: Drawer(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  child: Image.asset(
                    "assets/images/placeholder.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 190,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Spacer(),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/images/avatar.png"),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "John Doe",
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => ListTile(
                  leading: Icon(Icons.book),
                  title: Text(
                    'Menu ${index + 1}',
                    style: TextStyle(fontWeight: (_currentIndex == index) ? FontWeight.bold : FontWeight.normal),
                  ),
                  onTap: () {
                    // place menu action here
                    setState(() {
                      _currentIndex = index;
                    });
                    Navigator.pop(context);
                  },
                ),
              ),
            )
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
