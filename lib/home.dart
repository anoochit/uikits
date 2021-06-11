import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:uikits2/home_mobile.dart';
import 'package:uikits2/home_tablet.dart';

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
    );
  }
}
