import 'package:flutter/material.dart';
import 'package:uikits2/pages/signup/signupscreen01.dart';
import 'package:uikits2/pages/signup/signupscreen02.dart';
import 'package:uikits2/pages/signup/signupscreen03.dart';
import 'package:uikits2/pages/signup/signupscreen04.dart';
import 'package:uikits2/pages/signup/signupscreen05.dart';
import 'package:uikits2/pages/start/startscreen01.dart';
import 'package:uikits2/pages/start/startscreen02.dart';
import 'package:uikits2/pages/start/startscreen03.dart';
import 'package:uikits2/pages/start/startscreen04.dart';
import 'package:uikits2/pages/start/startscreen05.dart';
import 'package:uikits2/pages/walkthrough/walkthrough01.dart';
import 'package:uikits2/pages/walkthrough/walkthrough02.dart';
import 'package:uikits2/pages/walkthrough/walkthrough03.dart';

class Menu {
  String title;
  List<SubMenu> subMenu = [];

  Menu(this.title, this.subMenu);
}

class SubMenu {
  String title;
  Widget widget;

  SubMenu(this.title, this.widget);
}

var listMainMenu = [
  Menu("Start", listStartMenu),
  Menu("SignUp & Login", listSignupMenu),
  Menu("Walkthrough", listWalkthroughMenu),
  Menu("Loading", listStartMenu),
  Menu("Profiles", listStartMenu),
  Menu("Feed", listStartMenu),
  Menu("Article", listStartMenu),
  Menu("Activity", listStartMenu),
  Menu("Create", listStartMenu),
  Menu("Chat", listStartMenu),
  Menu("Contact", listStartMenu),
  Menu("Store & Shop", listStartMenu),
  Menu("Shopping Carts & Checkout", listStartMenu),
  Menu("Navigation", listStartMenu),
  Menu("Photos", listStartMenu),
  Menu("Dashboard", listStartMenu),
];

var listStartMenu = [
  SubMenu("Start screen 1", StartScreen01()),
  SubMenu("Start screen 2", StartScreen02()),
  SubMenu("Start screen 3", StartScreen03()),
  SubMenu("Start screen 4", StartScreen04()),
  SubMenu("Start screen 5", StartScreen05()),
];

var listSignupMenu = [
  SubMenu("Signup & Login screen 1", SignupScreen01()),
  SubMenu("Signup & Login screen 2", SignupScreen02()),
  SubMenu("Signup & Login screen 3", SignupScreen05()),
  SubMenu("Reset password screen", SignupScreen03()),
  SubMenu("Invitation code screen", SignupScreen04()),
];

var listWalkthroughMenu = [
  SubMenu("Walkthrough screen 1", WalkthroughScreen01()),
  SubMenu("Walkthrough screen 2", WalkthroughScreen02()),
  SubMenu("Walkthrough screen 3", WalkthroughScreen03()),
  // SubMenu("Walkthrough screen 4", SignupScreen04()),
  // SubMenu("Walkthrough screen 5", SignupScreen05()),
];
