import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ms_undraw/ms_undraw.dart';
import 'package:responsive_builder/responsive_builder.dart';

class StartScreen01 extends StatelessWidget {
  const StartScreen01({Key? key}) : super(key: key);

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
          ),
        ),
      ),
    );
  }
}

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var scWidth = MediaQuery.of(context).size.width;
    var scHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
          width: scWidth,
          height: scHeight * 0.8,
          child: ImageWidget(),
        ),
        Positioned(
          width: scWidth,
          bottom: 32,
          child: SignUpButtonWidget(scWidth: scWidth),
        )
      ],
    );
  }
}

class TabletScreen extends StatelessWidget {
  const TabletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SignUpButtonWidget extends StatelessWidget {
  const SignUpButtonWidget({
    Key? key,
    required this.scWidth,
  }) : super(key: key);

  final double scWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(scWidth * 0.8, 40),
        ),
        child: Text("Sign up with Email"),
        onPressed: () {
          // TODO : Put sign up function here
        },
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // TODO : Change your image here
      child: UnDraw(
        illustration: UnDrawIllustration.login,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
