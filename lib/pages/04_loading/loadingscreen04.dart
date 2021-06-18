import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LoadingScreen04 extends StatefulWidget {
  LoadingScreen04({Key? key}) : super(key: key);

  @override
  _LoadingScreen04State createState() => _LoadingScreen04State();
}

class _LoadingScreen04State extends State<LoadingScreen04> {
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
                  child: CircularPercentIndicator(
                    radius: 100,
                    lineWidth: 13.0,
                    animation: true,
                    percent: 0.7,
                    animationDuration: 1000,
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.blue,
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
                // Container(
                //   alignment: Alignment.bottomCenter,
                //   padding: EdgeInsets.all(32.0),
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       minimumSize: Size((constraints.maxWidth > 412) ? (constraints.maxWidth * 0.5) : constraints.maxWidth, 50),
                //     ),
                //     child: Text("Sign up with Email"),
                //     onPressed: () {
                //       // place sign up function here
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
