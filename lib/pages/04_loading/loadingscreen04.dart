import 'package:flutter/material.dart';

import 'package:percent_indicator/percent_indicator.dart';

class LoadingScreen04 extends StatefulWidget {
  const LoadingScreen04({super.key});

  @override
  State<LoadingScreen04> createState() => _LoadingScreen04State();
}

class _LoadingScreen04State extends State<LoadingScreen04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Center(
          child: Stack(
            children: [
              CircularPercentIndicator(
                radius: (constraints.maxWidth * 0.5) * 0.8,
                lineWidth: 13.0,
                animation: true,
                percent: 0.7,
                animationDuration: 1000,
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Theme.of(context).primaryColor,
              ),
              Positioned.fill(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
