import 'package:flutter/material.dart';

class StartScreen03 extends StatefulWidget {
  const StartScreen03({super.key});

  @override
  State<StartScreen03> createState() => _StartScreen03State();
}

class _StartScreen03State extends State<StartScreen03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            SizedBox(
              width: (constraints.maxWidth > 412)
                  ? (constraints.maxWidth * 0.5)
                  : constraints.maxWidth,
              height: constraints.maxHeight * 0.6,
              child: Image.asset('assets/images/placeholder.png',
                  fit: BoxFit.cover),
            ),
            const Spacer(),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                    child: const Text("Sign up with Facebook"),
                    onPressed: () {
                      // place sign up function here
                    },
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                    child: const Text("Sign up with Email"),
                    onPressed: () {
                      // place sign up function here
                    },
                  ),
                ],
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
