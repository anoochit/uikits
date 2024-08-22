import 'package:flutter/material.dart';

import 'package:uikits2/const.dart';

class SubMenuPage extends StatefulWidget {
  const SubMenuPage({super.key, required this.title, required this.submenu});

  final String title;
  final List<SubMenu> submenu;

  @override
  State<SubMenuPage> createState() => _SubMenuPageState();
}

class _SubMenuPageState extends State<SubMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        titleSpacing: 0,
      ),
      body: ListView.builder(
        itemCount: widget.submenu.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(widget.submenu[index].title),
            leading: const Icon(Icons.category_outlined),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => widget.submenu[index].widget,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
