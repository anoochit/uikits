import 'package:flutter/material.dart';
import 'package:ms_undraw/ms_undraw.dart';

class SignUpScreen01 extends StatefulWidget {
  const SignUpScreen01({super.key});

  @override
  State<SignUpScreen01> createState() => _SignUpScreen01State();
}

class _SignUpScreen01State extends State<SignUpScreen01> {
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
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                      ),
                      child: Text(
                        "Sign In",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                      ),
                      child: const Text("Please enter your Email and password"),
                    ),
                    const SizedBox(height: 64.0),
                    Container(
                      width: (constraints.maxWidth > 412)
                          ? (constraints.maxWidth * 0.5)
                          : (constraints.maxWidth),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
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
                            48),
                      ),
                      child: const Text("Sign in"),
                      onPressed: () {
                        // TODO : place sign in function here
                      },
                    ),
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
