import 'package:flutter/material.dart';

class StartScreen02 extends StatefulWidget {
  StartScreen02({Key? key}) : super(key: key);

  @override
  _StartScreen02State createState() => _StartScreen02State();
}

class _StartScreen02State extends State<StartScreen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) => Center(
          child: Column(
            children: [
              Spacer(),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 32),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text("Use you Email address to signup new account"),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                        (constraints.maxWidth > 412)
                            ? (constraints.maxWidth * 0.5)
                            : constraints.maxWidth,
                        50),
                  ),
                  child: Text("Sign up with Email"),
                  onPressed: () {
                    // place sign up function here
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                        (constraints.maxWidth > 412)
                            ? (constraints.maxWidth * 0.5)
                            : constraints.maxWidth,
                        50),
                  ),
                  child: Text("Sign In"),
                  onPressed: () {
                    // place sign up function here
                  },
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
