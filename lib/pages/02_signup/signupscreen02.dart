import 'package:flutter/material.dart';
import 'package:ms_undraw/ms_undraw.dart';

class SignUpScreen02 extends StatefulWidget {
  const SignUpScreen02({super.key});

  @override
  State<SignUpScreen02> createState() => _SignUpScreen02State();
}

class _SignUpScreen02State extends State<SignUpScreen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            Positioned.fill(
              child: Container(
                color: Theme.of(context).colorScheme.onInverseSurface,
                child: UnDraw(
                  illustration: UnDrawIllustration.eiffel_tower,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                ),
                child: Column(
                  children: [
                    const Spacer(),
                    Container(
                      width: (constraints.maxWidth > 412)
                          ? (constraints.maxWidth * 0.5)
                          : (constraints.maxWidth),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your Email',
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Container(
                      width: (constraints.maxWidth > 412)
                          ? (constraints.maxWidth * 0.5)
                          : (constraints.maxWidth),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your Password',
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    FilledButton(
                      style: FilledButton.styleFrom(
                        minimumSize: Size(
                            (constraints.maxWidth > 412)
                                ? (constraints.maxWidth * 0.5)
                                : (constraints.maxWidth),
                            50),
                      ),
                      child: const Text("Sign in"),
                      onPressed: () {
                        // TODO : place sign in function here
                      },
                    ),
                    const SizedBox(height: 8.0),
                    TextButton(
                      child: const Text("Don't have an account ? Signup"),
                      onPressed: () {
                        // TODO : place signup function here
                      },
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
