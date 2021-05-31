import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ms_undraw/ms_undraw.dart';
import 'package:responsive_builder/responsive_builder.dart';

class StartScreen03 extends StatelessWidget {
  const StartScreen03({Key? key}) : super(key: key);

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
    var scHeight = MediaQuery.of(context).size.height;
    return Container(
        child: Stack(
      children: [
        Positioned.fill(
          top: (scWidth * 0.8) * -1,
          child: UndrawImageWidget(),
        ),
        Positioned.fill(
          top: (scHeight * 0.5),
          child: TitleTextWidget(),
        ),
        Positioned(
          width: scWidth,
          bottom: 64,
          child: SignUpButtonWidget(scWidth: scWidth),
        )
      ],
    ));
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
      child: Flex(
        direction: Axis.vertical,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(scWidth * 0.8, 40),
            ),
            child: Text("Sign up with Facebook"),
            onPressed: () {
              // TODO : Put your signup function here
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(scWidth * 0.8, 40),
            ),
            child: Text("Sign up with Email"),
            onPressed: () {
              // TODO : Put your signup function here
            },
          ),
        ],
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Intruduction Text\n',
        style: TextStyle(fontSize: 24, color: Colors.black),
        children: const <TextSpan>[
          TextSpan(text: 'instruction text'),
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
