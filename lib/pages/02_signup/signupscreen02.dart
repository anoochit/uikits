import 'package:flutter/material.dart';

class SignUpScreen02 extends StatefulWidget {
  SignUpScreen02({Key? key}) : super(key: key);

  @override
  _SignUpScreen02State createState() => _SignUpScreen02State();
}

class _SignUpScreen02State extends State<SignUpScreen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Image.asset(
                'assets/images/placeholder.png',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: [
                    Spacer(),
                    Container(
                      width: (constraints.maxWidth > 412)
                          ? (constraints.maxWidth * 0.5)
                          : (constraints.maxWidth),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your Email',
                        ),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Container(
                      width: (constraints.maxWidth > 412)
                          ? (constraints.maxWidth * 0.5)
                          : (constraints.maxWidth),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your Password',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(
                              (constraints.maxWidth > 412)
                                  ? (constraints.maxWidth * 0.5)
                                  : (constraints.maxWidth),
                              50),
                        ),
                        child: Text("Sign in"),
                        onPressed: () {
                          // place sign in function here
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16.0),
                      child: GestureDetector(
                        child: Text("Don't have an account ? Signup"),
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
