import 'package:flutter/material.dart';
import 'package:uikits2/pages/14_navigation/sample_page.dart';

class NavigationScreen03 extends StatefulWidget {
  const NavigationScreen03({super.key});

  @override
  State<NavigationScreen03> createState() => _NavigationScreen03State();
}

class _NavigationScreen03State extends State<NavigationScreen03> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main"),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
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
                SizedBox(
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
                      const Spacer(),
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/images/avatar.png"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
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
                  leading: const Icon(Icons.book),
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
