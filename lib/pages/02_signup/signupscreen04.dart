import 'package:flutter/material.dart';

class SignUpScreen04 extends StatefulWidget {
  const SignUpScreen04({super.key});

  @override
  State<SignUpScreen04> createState() => _SignUpScreen04State();
}

class _SignUpScreen04State extends State<SignUpScreen04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: [
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8.0),
                      child: Text(
                        "Got invitation code?",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    const SizedBox(height: 64.0),
                    Container(
                      width: (constraints.maxWidth > 412)
                          ? ((constraints.maxWidth * 0.5))
                          : (constraints.maxWidth),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32.0)),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your Invitation Code',
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(
                              (constraints.maxWidth > 412)
                                  ? ((constraints.maxWidth * 0.5))
                                  : (constraints.maxWidth),
                              50),
                        ),
                        child: const Text("Sign up"),
                        onPressed: () {
                          // place sign in function here
                        },
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: GestureDetector(
                        child: const Text(
                            "Don't have an Invitation Code ? Get one"),
                        onTap: () {
                          // place signup function here
                        },
                      ),
                    ),
                    const SizedBox(height: 16.0),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
