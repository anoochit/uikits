import 'package:flutter/material.dart';

class StartScreen05 extends StatefulWidget {
  StartScreen05({Key? key}) : super(key: key);

  @override
  _StartScreen05State createState() => _StartScreen05State();
}

class _StartScreen05State extends State<StartScreen05> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            Positioned.fill(
              child: Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(60)),
                // place background image here
                child: Image.asset('assets/images/placeholder.png',
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 32),
              child: Row(
                children: [
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(
                            (constraints.maxWidth > 412)
                                ? ((constraints.maxWidth * 0.5) * 0.45)
                                : (constraints.maxWidth * 0.40),
                            50),
                      ),
                      child: Text("Sign up"),
                      onPressed: () {
                        // place sign up function here
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(
                            (constraints.maxWidth > 412)
                                ? ((constraints.maxWidth * 0.5) * 0.45)
                                : (constraints.maxWidth * 0.40),
                            50),
                      ),
                      child: Text("Sign in"),
                      onPressed: () {
                        // place sign in function here
                      },
                    ),
                  ),
                  Spacer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
