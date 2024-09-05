import 'package:flutter/material.dart';

class LoadingScreen02 extends StatefulWidget {
  const LoadingScreen02({super.key});

  @override
  State<LoadingScreen02> createState() => _LoadingScreen02State();
}

class _LoadingScreen02State extends State<LoadingScreen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Center(
          child: Column(
            children: [
              const Spacer(),
              SizedBox(
                width: 100,
                height: 100,
                child: CircularProgressIndicator(
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(32.0),
                child: Text(
                  "Please Wait",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              const Text(
                "We are working on your task",
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
