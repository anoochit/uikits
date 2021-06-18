import 'package:flutter/material.dart';
import 'package:ms_undraw/ms_undraw.dart';
import 'package:uikits2/pages/01_start/startscreen01.dart';
import 'package:uikits2/pages/01_start/startscreen02.dart';
import 'package:uikits2/pages/01_start/startscreen03.dart';
import 'package:uikits2/pages/01_start/startscreen04.dart';
import 'package:uikits2/pages/01_start/startscreen05.dart';
import 'package:uikits2/pages/02_signup/signupscreen01.dart';
import 'package:uikits2/pages/02_signup/signupscreen02.dart';
import 'package:uikits2/pages/02_signup/signupscreen03.dart';
import 'package:uikits2/pages/02_signup/signupscreen04.dart';
import 'package:uikits2/pages/02_signup/signupscreen05.dart';
import 'package:uikits2/pages/03_walkthrough/walkthroughscreen01.dart';
import 'package:uikits2/pages/03_walkthrough/walkthroughscreen02.dart';
import 'package:uikits2/pages/03_walkthrough/walkthroughscreen03.dart';
import 'package:uikits2/pages/03_walkthrough/walkthroughscreen04.dart';
import 'package:uikits2/pages/03_walkthrough/walkthroughscreen05.dart';
import 'package:uikits2/pages/04_loading/loadingscreen01.dart';
import 'package:uikits2/pages/04_loading/loadingscreen02.dart';
import 'package:uikits2/pages/04_loading/loadingscreen03.dart';
import 'package:uikits2/pages/04_loading/loadingscreen04.dart';

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

var listImageSubMenu = [
  UnDrawIllustration.start_building,
  UnDrawIllustration.login,
  UnDrawIllustration.steps,
  UnDrawIllustration.loading,
  UnDrawIllustration.profile,
];

var listSubMenu = [
  listStartMenu,
  listSignupMenu,
  listWalkthroughMenu,
  listLoadingMenu,
];

var listMainMenu = [
  Menu("Start", listStartMenu),
  Menu("SignUp & Login", listSignupMenu),
  Menu("Walkthrough", listWalkthroughMenu),
  Menu("Loading", listLoadingMenu),
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
  SubMenu("Signup screen 1", SignUpScreen01()),
  SubMenu("Signup screen 2", SignUpScreen02()),
  SubMenu("Signup screen 3", SignUpScreen03()),
  SubMenu("Signup screen 4", SignUpScreen04()),
  SubMenu("Signup screen 5", SignUpScreen05()),
];

var listWalkthroughMenu = [
  SubMenu("Walkthrough screen 1", WalkthroughScreen01()),
  SubMenu("Walkthrough screen 2", WalkthroughScreen02()),
  SubMenu("Walkthrough screen 3", WalkthroughScreen03()),
  SubMenu("Walkthrough screen 4", WalkthroughScreen04()),
  SubMenu("Walkthrough screen 5", WalkthroughScreen05()),
];

var listLoadingMenu = [
  SubMenu("Loading screen 1", LoadingScreen01()),
  SubMenu("Loading screen 2", LoadingScreen02()),
  SubMenu("Loading screen 3", LoadingScreen03()),
  SubMenu("Loading screen 4", LoadingScreen04()),
];
