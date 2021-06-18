import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StartScreen01 extends StatefulWidget {
  StartScreen01({Key? key}) : super(key: key);

  @override
  _StartScreen01State createState() => _StartScreen01State();
}

class _StartScreen01State extends State<StartScreen01> {
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
            child: Stack(
              children: [
                Container(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                  // place background image here
                  child: Image.asset(
                    'assets/images/placeholder.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.all(32.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size((constraints.maxWidth > 412) ? (constraints.maxWidth * 0.5) : constraints.maxWidth, 50),
                    ),
                    child: Text("Sign up with Email"),
                    onPressed: () {
                      // place sign up function here
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
