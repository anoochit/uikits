import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignupScreen04 extends StatelessWidget {
  const SignupScreen04({Key? key}) : super(key: key);

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
                top: MediaQuery.of(context).size.height * 0.2,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Forgot password?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Enter you email to recover account',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned.fill(
                top: MediaQuery.of(context).size.height * 0.35,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Flex(
                    direction: Axis.vertical,
                    children: [
                      TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue.shade50,
                          border: OutlineInputBorder(),
                          hintText: "Invitation Code",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your invitation code';
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
                        child: Text("Reset password"),
                        onPressed: () {
                          // put your singup script here
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                width: MediaQuery.of(context).size.width,
                bottom: 32,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("Don't have an Account? Signup"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
