import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class LoadingScreen05 extends StatelessWidget {
  const LoadingScreen05({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CircularCountDownTimer(
          duration: 90,
          initialDuration: 1,
          fillColor: Theme.of(context).colorScheme.primary,
          ringColor: Theme.of(context).colorScheme.inversePrimary,
          textFormat: CountdownTextFormat.S,
          textStyle: Theme.of(context).textTheme.headlineLarge,
          isReverseAnimation: true,
          isReverse: true,
          isTimerTextShown: true,
          height: 120,
          width: 120,
          strokeWidth: 12,
          onStart: () {
            // timer start
          },
          onComplete: () {
            // time out
          },
        ),
      ),
    );
  }
}
