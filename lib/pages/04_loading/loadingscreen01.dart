import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LoadingScreen01 extends StatefulWidget {
  const LoadingScreen01({super.key});

  @override
  State<LoadingScreen01> createState() => _LoadingScreen01State();
}

class _LoadingScreen01State extends State<LoadingScreen01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            const Spacer(),
            Text(
              "Downloading",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Text("100mb of 200mb"),
            Container(
              padding: const EdgeInsets.all(32.0),
              child: LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                progressColor: Theme.of(context).primaryColor,
                percent: 0.5,
              ),
            ),
            const Spacer(),
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
                child: const Text("Go Back"),
                onPressed: () {
                  // place sign up function here
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
