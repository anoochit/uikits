import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StartScreen03 extends StatefulWidget {
  StartScreen03({Key? key}) : super(key: key);

  @override
  _StartScreen03State createState() => _StartScreen03State();
}

class _StartScreen03State extends State<StartScreen03> {
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
          builder: (context, constraints) => Stack(
            children: [
              Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight * 0.5,
                // place background image here
                child: Image.asset('assets/images/placeholder.png', fit: BoxFit.cover),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size((constraints.maxWidth > 412) ? (constraints.maxWidth * 0.5) : constraints.maxWidth, 50),
                        ),
                        child: Text("Sign up with Facebook"),
                        onPressed: () {
                          // place sign up function here
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 32.0, right: 32, top: 8.0, bottom: 32),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
