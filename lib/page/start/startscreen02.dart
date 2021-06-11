import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_builder/responsive_builder.dart';

class StartScreen02 extends StatelessWidget {
  const StartScreen02({Key? key}) : super(key: key);

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
            child: ScreenTypeLayout.builder(
          mobile: (context) => MobileScreen(),
          tablet: (context) => TabletScreen(),
        )),
      ),
    );
  }
}

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scWidth = MediaQuery.of(context).size.width;
    //var scHeight = MediaQuery.of(context).size.height;
    return Center(
      child: Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          TextTitleWidget(scWidth: scWidth),
          SizedBox(height: 256),
          SignUpAndSignInButtonWidget(scWidth: scWidth),
        ],
      ),
    );
  }
}

class TabletScreen extends StatelessWidget {
  const TabletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: constraints.maxWidth,
              child: TextTitleWidget(scWidth: constraints.maxWidth),
            ),
            SizedBox(height: 256),
            Container(
              child: SignUpAndSignInButtonWidget(scWidth: constraints.maxWidth * 0.5),
            ),
          ],
        );
      },
    );
  }
}

class SignUpAndSignInButtonWidget extends StatelessWidget {
  const SignUpAndSignInButtonWidget({
    Key? key,
    required this.scWidth,
  }) : super(key: key);

  final double scWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(scWidth * 0.8, 40),
          ),
          child: Text("Sign up with Email"),
          onPressed: () {
            // TODO : Put your signup with email function here
          },
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.black,
            minimumSize: Size(scWidth * 0.8, 40),
          ),
          child: Text("Sign In"),
          onPressed: () {
            // TODO : Put your sign in function here
          },
        ),
      ],
    );
  }
}

class TextTitleWidget extends StatelessWidget {
  const TextTitleWidget({
    Key? key,
    required this.scWidth,
  }) : super(key: key);

  final double scWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: scWidth * 0.5,
      child: RichText(
        textAlign: TextAlign.center,
        // TODO : Change your text here
        text: TextSpan(
          text: 'Sign Up\n',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
          children: const <TextSpan>[
            TextSpan(
              text: 'for Mobile App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
