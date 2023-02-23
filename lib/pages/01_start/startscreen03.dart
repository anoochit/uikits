import 'package:flutter/material.dart';

class StartScreen03 extends StatefulWidget {
  StartScreen03({Key? key}) : super(key: key);

  @override
  _StartScreen03State createState() => _StartScreen03State();
}

class _StartScreen03State extends State<StartScreen03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            Container(
              width: (constraints.maxWidth > 412)
                  ? (constraints.maxWidth * 0.5)
                  : constraints.maxWidth,
              height: constraints.maxHeight * 0.6,
              child: Image.asset('assets/images/placeholder.png',
                  fit: BoxFit.cover),
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        (constraints.maxWidth > 412)
                            ? (constraints.maxWidth * 0.5)
                            : constraints.maxWidth * 0.9,
                        50,
                      ),
                    ),
                    child: Text("Sign up with Facebook"),
                    onPressed: () {
                      // place sign up function here
                    },
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        (constraints.maxWidth > 412)
                            ? (constraints.maxWidth * 0.5)
                            : constraints.maxWidth * 0.9,
                        50,
                      ),
                    ),
                    child: Text("Sign up with Email"),
                    onPressed: () {
                      // place sign up function here
                    },
                  ),
                ],
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
