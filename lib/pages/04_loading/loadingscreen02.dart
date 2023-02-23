import 'package:flutter/material.dart';

class LoadingScreen02 extends StatefulWidget {
  LoadingScreen02({Key? key}) : super(key: key);

  @override
  _LoadingScreen02State createState() => _LoadingScreen02State();
}

class _LoadingScreen02State extends State<LoadingScreen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Center(
          child: Column(
            children: [
              Spacer(),
              Container(
                width: 100,
                height: 100,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey.shade200,
                ),
              ),
              Container(
                padding: EdgeInsets.all(32.0),
                child: Text(
                  "Please Wait",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              Container(
                child: Text(
                  "We are working on your task",
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
