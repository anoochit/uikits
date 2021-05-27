import 'package:flutter/material.dart';
import 'package:uikits2/pages/start/startscreen01.dart';
import 'package:uikits2/pages/start/startscreen02.dart';
import 'package:uikits2/pages/start/startscreen03.dart';
import 'package:uikits2/pages/start/startscreen04.dart';
import 'package:uikits2/pages/start/startscreen05.dart';

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
  Menu("SignUp & Login", listStartMenu),
  Menu("Walkthrough", listStartMenu),
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
