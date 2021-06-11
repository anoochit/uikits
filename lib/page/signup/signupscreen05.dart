import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ms_undraw/ms_undraw.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignupScreen05 extends StatelessWidget {
  const SignupScreen05({Key? key}) : super(key: key);

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
          top: (scHeight * 0.2) * -1,
          child: UndrawImageWidget(),
        ),
        Positioned(
          width: scWidth,
          bottom: 32,
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SignInFormWidget(scHeight: scHeight),
          ),
        )
      ],
    );
  }
}

class SignInFormWidget extends StatefulWidget {
  const SignInFormWidget({
    Key? key,
    required this.scHeight,
  }) : super(key: key);

  final double scHeight;

  @override
  _SignInFormWidgetState createState() => _SignInFormWidgetState();
}

class _SignInFormWidgetState extends State<SignInFormWidget> {
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
            obscureText: true,
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
              minimumSize: Size(widget.scHeight, 50),
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
            child: Text("Sign in"),
            onPressed: () {
              // put your singup script here
            },
          ),
          SizedBox(height: 24),
          Text("Don't have an Account? Signup")
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
