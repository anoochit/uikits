import 'package:flutter/material.dart';

class LoadingScreen03 extends StatefulWidget {
  LoadingScreen03({Key? key}) : super(key: key);

  @override
  _LoadingScreen03State createState() => _LoadingScreen03State();
}

class _LoadingScreen03State extends State<LoadingScreen03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) => Center(
          child: Column(
            children: [
              Spacer(),
              Container(
                width: (constraints.maxWidth > 412)
                    ? 400
                    : (constraints.maxWidth * 0.8),
                height: (constraints.maxWidth > 412)
                    ? 400
                    : (constraints.maxWidth * 0.8),
                child: Image.asset(
                  'assets/images/placeholder.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("Title", style: TextStyle(fontSize: 32)),
                    ),
                    Text("Sub Title", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              Spacer(),
              Container(
                width: 40,
                height: 40,
                child: CircularProgressIndicator(
                  strokeWidth: 4.0,
                  backgroundColor: Colors.grey.shade100,
                ),
              ),
              Container(
                padding: EdgeInsets.all(32.0),
                child: Text(
                  "Please Wait",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
