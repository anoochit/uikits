import 'package:flutter/material.dart';

class StartScreen02 extends StatefulWidget {
  const StartScreen02({super.key});

  @override
  State<StartScreen02> createState() => _StartScreen02State();
}

class _StartScreen02State extends State<StartScreen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Center(
          child: Column(
            children: [
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 32),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child:
                    const Text("Use you Email address to signup new account"),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 8.0,
                ),
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    minimumSize: Size(
                        (constraints.maxWidth > 412)
                            ? (constraints.maxWidth * 0.5)
                            : constraints.maxWidth,
                        50),
                  ),
                  child: const Text("Sign up with Email"),
                  onPressed: () {
                    // TODO : place sign up function here
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 8.0,
                ),
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    minimumSize: Size(
                        (constraints.maxWidth > 412)
                            ? (constraints.maxWidth * 0.5)
                            : constraints.maxWidth,
                        50),
                  ),
                  child: const Text("Sign In"),
                  onPressed: () {
                    // TODO : place sign up function here
                  },
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
