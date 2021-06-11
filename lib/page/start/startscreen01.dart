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
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
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
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          Positioned(
            width: constraints.maxWidth,
            height: constraints.maxHeight * 0.8,
            child: UndrawImageWidget(),
          ),
          Positioned(
            width: constraints.maxWidth,
            bottom: 32,
            child: SignUpButtonWidget(scWidth: constraints.maxWidth),
          )
        ],
      );
    });
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
              width: constraints.maxWidth * 0.5,
              child: UndrawImageWidget(),
            ),
            Container(
              child: SignUpButtonWidget(scWidth: constraints.maxWidth * 0.5),
            ),
          ],
        );
      },
    );
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

class UndrawImageWidget extends StatelessWidget {
  const UndrawImageWidget({
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
