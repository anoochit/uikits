import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DashboardScreen04 extends StatefulWidget {
  DashboardScreen04({Key? key}) : super(key: key);

  @override
  _DashboardScreen04State createState() => _DashboardScreen04State();
}

class _DashboardScreen04State extends State<DashboardScreen04> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // transparent status bar
        systemNavigationBarColor: Colors.black, // navigation bar color
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness: Brightness.dark, //navigation bar icons' color
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: Text("Photos", style: TextStyle(color: Colors.black)),
        //   titleSpacing: 0,
        //   backgroundColor: Colors.white,
        //   iconTheme: IconThemeData(color: Colors.black),
        //   elevation: 0,
        // ),
        body: LayoutBuilder(
          builder: (context, constraints) => Column(
            children: [
              Expanded(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: Container(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
