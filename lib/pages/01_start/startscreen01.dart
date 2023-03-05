import 'package:flutter/material.dart';

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
        builder: (context, constraints) => Center(
          child: Stack(
            children: [
              SizedBox(
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                // place background image here
                child: Image.asset(
                  'assets/images/placeholder.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.all(32.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                        (constraints.maxWidth > 412)
                            ? (constraints.maxWidth * 0.5)
                            : constraints.maxWidth,
                        50),
                  ),
                  child: const Text("Sign up with Email"),
                  onPressed: () {
                    // place sign up function here
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
