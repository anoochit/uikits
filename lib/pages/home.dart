import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:uikits2/const.dart';
import 'package:uikits2/pages/detail.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => HomeMobile(),
      tablet: (context) => HomeTablet(),
      desktop: (context) => HomeDesktop(),
    );
  }
}

// layout for mobile
class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UI Kits"),
      ),
      body: ListView.builder(
        itemCount: listMainMenu.length,
        itemBuilder: (BuildContext context, int index) {
          var title = listMainMenu[index].title;
          var subMenu = listMainMenu[index].subMenu;
          return ListTile(
            title: Text(title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SubMenuPage(title: title, submenu: subMenu),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// layout for tablet
class HomeTablet extends StatelessWidget {
  const HomeTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// layout for desktop
class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
