import 'package:flutter/material.dart';
import 'package:ms_undraw/ms_undraw.dart';

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
            const Spacer(),
            SizedBox(
              width: (constraints.maxWidth > 412)
                  ? (constraints.maxWidth * 0.5)
                  : (constraints.maxWidth - 16),
              height: constraints.maxHeight * 0.6,
              child: UnDraw(
                illustration: UnDrawIllustration.social_bio,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const Spacer(),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                children: [
                  FilledButton(
                    style: FilledButton.styleFrom(
                      minimumSize: Size(
                        (constraints.maxWidth > 412)
                            ? (constraints.maxWidth * 0.5)
                            : constraints.maxWidth * 0.9,
                        50,
                      ),
                    ),
                    child: const Text("Sign up with Facebook"),
                    onPressed: () {
                      // TODO : place sign up function here
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
                  FilledButton(
                    style: FilledButton.styleFrom(
                      minimumSize: Size(
                        (constraints.maxWidth > 412)
                            ? (constraints.maxWidth * 0.5)
                            : constraints.maxWidth * 0.9,
                        50,
                      ),
                    ),
                    child: const Text("Sign up with Email"),
                    onPressed: () {
                      // TODO : place sign up function here
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
