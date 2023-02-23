import 'package:flutter/material.dart';

class SignUpScreen01 extends StatefulWidget {
  SignUpScreen01({Key? key}) : super(key: key);

  @override
  _SignUpScreen01State createState() => _SignUpScreen01State();
}

class _SignUpScreen01State extends State<SignUpScreen01> {
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
                padding: EdgeInsets.symmetric(
                  horizontal: 32.0,
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8.0,
                      ),
                      child: Text(
                        "Sign In",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                      child: Text("Please enter your Email and password"),
                    ),
                    SizedBox(height: 64.0),
                    Container(
                      width: (constraints.maxWidth > 412)
                          ? (constraints.maxWidth * 0.5)
                          : (constraints.maxWidth),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
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
