import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ms_undraw/ms_undraw.dart';
import 'package:responsive_builder/responsive_builder.dart';

class StartScreen05 extends StatelessWidget {
  const StartScreen05({Key? key}) : super(key: key);

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
    return Stack(
      children: [
        Positioned.fill(
          top: (scWidth * 0.2) * -1,
          child: UndrawImageWidget(),
        ),
        Positioned(
          width: scWidth,
          bottom: 32,
          child: SignInButtonWidget(scWidth: scWidth),
        )
      ],
    );
  }
}

class SignInButtonWidget extends StatelessWidget {
  const SignInButtonWidget({
    Key? key,
    required this.scWidth,
  }) : super(key: key);

  final double scWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(scWidth * 0.45, 40),
            ),
            child: Text("Sign up"),
            onPressed: () {},
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(scWidth * 0.45, 40),
            ),
            child: Text("Sign in"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class UndrawImageWidget extends StatelessWidget {
  const UndrawImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnDraw(
      illustration: UnDrawIllustration.login,
      color: Theme.of(context).primaryColor,
    );
  }
}
