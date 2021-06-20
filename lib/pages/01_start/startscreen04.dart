import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StartScreen04 extends StatefulWidget {
  StartScreen04({Key? key}) : super(key: key);

  @override
  _StartScreen04State createState() => _StartScreen04State();
}

class _StartScreen04State extends State<StartScreen04> {
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
              Positioned.fill(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
                      // place background image here
                      child: ClipOval(child: Image.asset('assets/images/avatar.png', fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      // replace username here
                      child: Text(
                        "John Doe",
                        style: TextStyle(fontSize: 32.0),
                      ),
                    ),
                  ],
                ),
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
                        child: Text("Continue"),
                        onPressed: () {
                          // place sign up function here
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 32.0, right: 32, top: 8.0, bottom: 32),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          minimumSize: Size((constraints.maxWidth > 412) ? (constraints.maxWidth * 0.5) : constraints.maxWidth, 50),
                        ),
                        child: Text("Sign in with another account"),
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
