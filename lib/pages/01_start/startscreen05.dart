import 'package:flutter/material.dart';
import 'package:ms_undraw/ms_undraw.dart';

class StartScreen05 extends StatefulWidget {
  const StartScreen05({super.key});

  @override
  State<StartScreen05> createState() => _StartScreen05State();
}

class _StartScreen05State extends State<StartScreen05> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: UnDraw(
                  illustration: UnDrawIllustration.absorbed_in,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                bottom: 32,
              ),
              child: Row(
                children: [
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        minimumSize: Size(
                            (constraints.maxWidth > 412)
                                ? ((constraints.maxWidth * 0.5) * 0.45)
                                : (constraints.maxWidth * 0.40),
                            50),
                      ),
                      child: const Text("Sign Up"),
                      onPressed: () {
                        // place sign up function here
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        minimumSize: Size(
                            (constraints.maxWidth > 412)
                                ? ((constraints.maxWidth * 0.5) * 0.45)
                                : (constraints.maxWidth * 0.40),
                            50),
                      ),
                      child: const Text("Sign In"),
                      onPressed: () {
                        // place sign in function here
                      },
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
