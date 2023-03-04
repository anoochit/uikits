import 'package:flutter/material.dart';

class SignUpScreen04 extends StatefulWidget {
  SignUpScreen04({Key? key}) : super(key: key);

  @override
  _SignUpScreen04State createState() => _SignUpScreen04State();
}

class _SignUpScreen04State extends State<SignUpScreen04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: [
                    Spacer(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                      child: Text(
                        "Got invitation code?",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    SizedBox(height: 64.0),
                    Container(
                      width: (constraints.maxWidth > 412)
                          ? ((constraints.maxWidth * 0.5))
                          : (constraints.maxWidth),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32.0)),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your Invitation Code',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(
                              (constraints.maxWidth > 412)
                                  ? ((constraints.maxWidth * 0.5))
                                  : (constraints.maxWidth),
                              50),
                        ),
                        child: Text("Sign up"),
                        onPressed: () {
                          // place sign in function here
                        },
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(16.0),
                      child: GestureDetector(
                        child: Text("Don't have an Invitation Code ? Get one"),
                        onTap: () {
                          // place signup function here
                        },
                      ),
                    ),
                    SizedBox(height: 16.0),
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
