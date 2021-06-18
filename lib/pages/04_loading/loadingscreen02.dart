import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoadingScreen02 extends StatefulWidget {
  LoadingScreen02({Key? key}) : super(key: key);

  @override
  _LoadingScreen02State createState() => _LoadingScreen02State();
}

class _LoadingScreen02State extends State<LoadingScreen02> {
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
        body: LayoutBuilder(
          builder: (context, constraints) => Center(
            child: Column(
              children: [
                Spacer(),
                Container(
                  width: 100,
                  height: 100,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.grey.shade100,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(32.0),
                  child: Text(
                    "Please Wait",
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                Container(
                  child: Text(
                    "We are working on your task",
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
