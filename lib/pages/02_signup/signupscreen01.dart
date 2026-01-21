import 'package:flutter/material.dart';

class SignupScreen01 extends StatefulWidget {
  const SignupScreen01({super.key});

  @override
  State<SignupScreen01> createState() => _SignupScreen01State();
}

class _SignupScreen01State extends State<SignupScreen01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 32.0),
            FilledButton(
              onPressed: () {
                // TODO: Implement signup logic
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}