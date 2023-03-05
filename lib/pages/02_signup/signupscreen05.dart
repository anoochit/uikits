import 'package:flutter/material.dart';

class SignUpScreen05 extends StatefulWidget {
  const SignUpScreen05({super.key});

  @override
  State<SignUpScreen05> createState() => _SignUpScreen05State();
}

class _SignUpScreen05State extends State<SignUpScreen05> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxWidth,
              child: Image.asset(
                'assets/images/placeholder.png',
                fit: BoxFit.cover,
              ),
            ),
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
                        "Sign In",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8.0),
                      child: const Text("Please enter your Email and password"),
                    ),
                    const SizedBox(height: 32.0),
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
                          hintText: 'Your Email',
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Container(
                      width: (constraints.maxWidth > 412)
                          ? ((constraints.maxWidth * 0.5))
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
                        child: const Text("Sign in"),
                        onPressed: () {
                          // place sign in function here
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: GestureDetector(
                        child: const Text("Don't have an account ? Signup"),
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
