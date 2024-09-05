import 'package:flutter/material.dart';

class StartScreen04 extends StatefulWidget {
  const StartScreen04({super.key});

  @override
  State<StartScreen04> createState() => _StartScreen04State();
}

class _StartScreen04State extends State<StartScreen04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(60)),
                    // TODO : place background image here
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/1182518?v=4',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    // replace username here
                    child: Text(
                      "Anuchit Chalothorn",
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
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 8.0),
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        minimumSize: Size(
                            (constraints.maxWidth > 412)
                                ? (constraints.maxWidth * 0.5)
                                : constraints.maxWidth,
                            50),
                      ),
                      child: const Text("Continue"),
                      onPressed: () {
                        // TODO : place sign up function here
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 32.0, right: 32, top: 8.0, bottom: 32),
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        minimumSize: Size(
                            (constraints.maxWidth > 412)
                                ? (constraints.maxWidth * 0.5)
                                : constraints.maxWidth,
                            50),
                      ),
                      child: const Text("Sign in with another account"),
                      onPressed: () {
                        // TODO : place sign up function here
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
