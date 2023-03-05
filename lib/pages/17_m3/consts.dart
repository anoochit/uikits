import 'package:flutter/material.dart';

class NavMenu {
  final String title;
  final IconData icon;
  final IconData selectedIcon;

  NavMenu(this.title, this.icon, this.selectedIcon);
}

final navMenuList = [
  NavMenu("Home", Icons.home_outlined, Icons.home),
  NavMenu("Chat", Icons.chat_bubble_outline, Icons.chat_bubble),
  NavMenu("Notification", Icons.notifications_outlined, Icons.notifications),
  NavMenu("Settings", Icons.settings_outlined, Icons.settings),
];

class BlankScreen extends StatelessWidget {
  final String text;

  const BlankScreen({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(text.substring(0, 1)[0].toString().toUpperCase()),
            ),
            title: Text('$text ${index + 1}'),
          );
        },
      ),
    );
  }
}
