import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
          child: ScreenTypeLayout.builder(
            mobile: (context) => MobileScreen(),
          ),
        ),
      ),
    );
  }
}

class MobileScreen extends StatelessWidget {
  const MobileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scWidth = MediaQuery.of(context).size.width;
    var scHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned.fill(
          top: scHeight * 0.2,
          child: TitleTextWidget(),
        ),
        Positioned(
          width: scWidth,
          bottom: 32,
          child: SignUpTextWidget(),
        ),
        Positioned.fill(
          top: scHeight * 0.35,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: InvitationFromWidget(scWidth: scWidth),
          ),
        ),
      ],
    );
  }
}

class SignUpTextWidget extends StatelessWidget {
  const SignUpTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text("Don't have an Account? Signup"),
    );
  }
}

class InvitationFromWidget extends StatefulWidget {
  const InvitationFromWidget({
    Key? key,
    required this.scWidth,
  }) : super(key: key);

  final double scWidth;

  @override
  _InvitationFromWidgetState createState() => _InvitationFromWidgetState();
}

class _InvitationFromWidgetState extends State<InvitationFromWidget> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
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
              minimumSize: Size(widget.scWidth, 50),
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
            child: Text("Sign In"),
            onPressed: () {
              // put your singup script here
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
        text: 'Forgot password?\n',
        style: TextStyle(fontSize: 24, color: Colors.black),
        children: const <TextSpan>[
          TextSpan(
            text: 'Enter you email to recover account',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
