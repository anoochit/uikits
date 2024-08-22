import 'package:flutter/material.dart';

class LoadingScreen03 extends StatefulWidget {
  const LoadingScreen03({super.key});

  @override
  State<LoadingScreen03> createState() => _LoadingScreen03State();
}

class _LoadingScreen03State extends State<LoadingScreen03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Center(
          child: Column(
            children: [
              const Spacer(),
              SizedBox(
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
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Title", style: TextStyle(fontSize: 32)),
                  ),
                  Text("Sub Title", style: TextStyle(fontSize: 16)),
                ],
              ),
              const Spacer(),
              SizedBox(
                width: 40,
                height: 40,
                child: CircularProgressIndicator(
                  strokeWidth: 4.0,
                  backgroundColor: Colors.grey.shade100,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(32.0),
                child: const Text(
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
