import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DashboardScreen03 extends StatefulWidget {
  DashboardScreen03({Key? key}) : super(key: key);

  @override
  _DashboardScreen03State createState() => _DashboardScreen03State();
}

class _DashboardScreen03State extends State<DashboardScreen03> {
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
