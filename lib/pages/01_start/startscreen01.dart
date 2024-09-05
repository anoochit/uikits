import 'package:flutter/material.dart';
// TODO : add package ms_undraw
import 'package:ms_undraw/ms_undraw.dart';

class StartScreen01 extends StatefulWidget {
  const StartScreen01({super.key});

  @override
  State<StartScreen01> createState() => _StartScreen01State();
}

class _StartScreen01State extends State<StartScreen01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            Align(
              alignment: Alignment.center,
              // TODO : change your image here
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: UnDraw(
                  illustration: UnDrawIllustration.a_day_at_the_park,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.all(32.0),
              child: FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize: Size(
                    (constraints.maxWidth > 412)
                        ? (constraints.maxWidth * 0.5)
                        : constraints.maxWidth,
                    50,
                  ),
                ),
                child: const Text("Sign up with Email"),
                onPressed: () {
                  // TODO : place sign up function here
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
