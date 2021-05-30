import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ms_undraw/ms_undraw.dart';

class SignupScreen01 extends StatelessWidget {
  const SignupScreen01({Key? key}) : super(key: key);

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
        body: SafeArea(
          child: Stack(
            children: [
              Positioned.fill(
                top: (MediaQuery.of(context).size.height * 0.2) * -1,
                child: UnDraw(
                  illustration: UnDrawIllustration.login,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Positioned(
                width: MediaQuery.of(context).size.width,
                bottom: 32,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Flex(
                    direction: Axis.vertical,
                    children: [
                      TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue.shade50,
                          border: OutlineInputBorder(),
                          hintText: "Your Email",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue.shade50,
                          border: OutlineInputBorder(),
                          hintText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(MediaQuery.of(context).size.width, 50),
                          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
                        ),
                        child: Text("Sign up with Email"),
                        onPressed: () {
                          // put your singup script here
                        },
                      ),
                      SizedBox(height: 24),
                      Text("Don't have an Account? Signup")
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
