import 'package:flutter/material.dart';
import 'package:uikits2/const.dart';

class SubMenuPage extends StatefulWidget {
  final String title;
  final List<SubMenu> submenu;

  SubMenuPage({Key? key, required this.title, required this.submenu}) : super(key: key);

  @override
  _SubMenuPageState createState() => _SubMenuPageState(this.title, this.submenu);
}

class _SubMenuPageState extends State<SubMenuPage> {
  String title;
  List<SubMenu> submenu;
  _SubMenuPageState(this.title, this.submenu);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${this.title}'),
      ),
      body: ListView.builder(
        itemCount: submenu.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('${submenu[index].title}'),
            leading: Icon(Icons.category_outlined),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => submenu[index].widget,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
