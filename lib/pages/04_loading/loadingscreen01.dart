import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LoadingScreen01 extends StatefulWidget {
  LoadingScreen01({Key? key}) : super(key: key);

  @override
  _LoadingScreen01State createState() => _LoadingScreen01State();
}

class _LoadingScreen01State extends State<LoadingScreen01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            Spacer(),
            Container(
              child: Text(
                "Downloading",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            Container(
              child: Text("100mb of 200mb"),
            ),
            Container(
              padding: EdgeInsets.all(32.0),
              child: LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                progressColor: Theme.of(context).primaryColor,
                percent: 0.5,
              ),
            ),
            Spacer(),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(32.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                      (constraints.maxWidth > 412)
                          ? (constraints.maxWidth * 0.5)
                          : constraints.maxWidth,
                      50),
                ),
                child: Text("Go Back"),
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
