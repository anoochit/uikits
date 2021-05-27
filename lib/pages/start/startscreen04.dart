import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ms_undraw/ms_undraw.dart';

class StartScreen04 extends StatelessWidget {
  const StartScreen04({Key? key}) : super(key: key);

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
                top: (MediaQuery.of(context).size.width * 0.8) * -1,
                child: UnDraw(
                  illustration: UnDrawIllustration.login,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Positioned.fill(
                top: (MediaQuery.of(context).size.height * 0.5),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'HELLO,\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(text: 'User Name'),
                    ],
                  ),
                ),
              ),
              Positioned(
                width: MediaQuery.of(context).size.width,
                bottom: 64,
                child: Container(
                    alignment: Alignment.center,
                    child: Flex(
                      direction: Axis.vertical,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 40),
                          ),
                          child: Text("Continue"),
                          onPressed: () {},
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.black,
                            minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 40),
                          ),
                          child: Text("Sign in with another Account"),
                          onPressed: () {},
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
