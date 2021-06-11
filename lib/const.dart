import 'package:flutter/material.dart';
import 'package:ms_undraw/ms_undraw.dart';
import 'package:uikits2/page/start/startscreen01.dart';
import 'package:uikits2/page/start/startscreen02.dart';
import 'package:uikits2/page/start/startscreen03.dart';
import 'package:uikits2/page/start/startscreen04.dart';
import 'package:uikits2/page/start/startscreen05.dart';

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
];

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
  SubMenu("Signup & Login screen 1", Container()),
  SubMenu("Signup & Login screen 2", Container()),
  SubMenu("Signup & Login screen 3", Container()),
  SubMenu("Reset password screen", Container()),
  SubMenu("Invitation code screen", Container()),
];

var listWalkthroughMenu = [
  SubMenu("Walkthrough screen 1", Container()),
  SubMenu("Walkthrough screen 2", Container()),
  SubMenu("Walkthrough screen 3", Container()),
  // SubMenu("Walkthrough screen 4", SignupScreen04()),
  // SubMenu("Walkthrough screen 5", SignupScreen05()),
];
