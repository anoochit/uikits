import 'package:flutter/material.dart';
import 'package:uikits2/pages/14_navigation/sample_page.dart';

class NavigationScreen01 extends StatefulWidget {
  NavigationScreen01({Key? key}) : super(key: key);

  @override
  _NavigationScreen01State createState() => _NavigationScreen01State();
}

class _NavigationScreen01State extends State<NavigationScreen01> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main"),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Page1(),
          Page2(),
          Page3(),
          Page4(),
        ],
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
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
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
                    style: TextStyle(
                        fontWeight: (_currentIndex == index)
                            ? FontWeight.bold
                            : FontWeight.normal),
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
    );
  }
}
