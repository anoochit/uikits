import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpScreen05 extends StatefulWidget {
  SignUpScreen05({Key? key}) : super(key: key);

  @override
  _SignUpScreen05State createState() => _SignUpScreen05State();
}

class _SignUpScreen05State extends State<SignUpScreen05> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // transparent status bar
        systemNavigationBarColor: Colors.black, // navigation bar color
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness: Brightness.dark, //navigation bar icons' color
      ),
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) => Stack(
            children: [
              Container(
                width: constraints.maxWidth,
                height: constraints.maxWidth,
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
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                        child: Text("Sign In", style: TextStyle(fontSize: 32.0)),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                        child: Text("Please enter your Email and password"),
                      ),
                      SizedBox(height: 64.0),
                      Container(
                        width: (constraints.maxWidth > 412) ? ((constraints.maxWidth * 0.5)) : (constraints.maxWidth),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade200), color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
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
                        width: (constraints.maxWidth > 412) ? ((constraints.maxWidth * 0.5)) : (constraints.maxWidth),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade200), color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
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
                            minimumSize: Size((constraints.maxWidth > 412) ? ((constraints.maxWidth * 0.5)) : (constraints.maxWidth), 50),
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
      ),
    );
  }
}
