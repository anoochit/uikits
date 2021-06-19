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
import 'package:uikits2/pages/05_profile/profilescreen01.dart';
import 'package:uikits2/pages/05_profile/profilescreen02.dart';
import 'package:uikits2/pages/05_profile/profilescreen03.dart';
import 'package:uikits2/pages/05_profile/profilescreen04.dart';
import 'package:uikits2/pages/05_profile/profilescreen05.dart';
import 'package:uikits2/pages/06_feed/feedscreen01.dart';
import 'package:uikits2/pages/06_feed/feedscreen02.dart';
import 'package:uikits2/pages/06_feed/feedscreen03.dart';
import 'package:uikits2/pages/06_feed/feedscreen04.dart';
import 'package:uikits2/pages/06_feed/feedscreen05.dart';
import 'package:uikits2/pages/07_article/articlescreen01.dart';
import 'package:uikits2/pages/07_article/articlescreen02.dart';
import 'package:uikits2/pages/07_article/articlescreen03.dart';
import 'package:uikits2/pages/07_article/articlescreen04.dart';
import 'package:uikits2/pages/07_article/articlescreen05.dart';
import 'package:uikits2/pages/08_activity/activitycreen01.dart';
import 'package:uikits2/pages/08_activity/activitycreen02.dart';
import 'package:uikits2/pages/08_activity/activitycreen03.dart';
import 'package:uikits2/pages/08_activity/activitycreen04.dart';
import 'package:uikits2/pages/08_activity/activitycreen05.dart';

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

final listImageSubMenu = [
  UnDrawIllustration.start_building,
  UnDrawIllustration.login,
  UnDrawIllustration.steps,
  UnDrawIllustration.loading,
  UnDrawIllustration.profile,
  UnDrawIllustration.my_feed,
  UnDrawIllustration.news,
];

final listSubMenu = [
  listStartMenu,
  listSignupMenu,
  listWalkthroughMenu,
  listLoadingMenu,
  listProfileMenu,
  listFeedMenu,
  listArticleMenu,
  listActivityMenu,
];

final listMainMenu = [
  Menu("Start", listStartMenu),
  Menu("SignUp & Login", listSignupMenu),
  Menu("Walkthrough", listWalkthroughMenu),
  Menu("Loading", listLoadingMenu),
  Menu("Profiles", listProfileMenu),
  Menu("Feed", listFeedMenu),
  Menu("Article", listArticleMenu),
  Menu("Activity", listActivityMenu),
  Menu("Create", listStartMenu),
  Menu("Chat", listStartMenu),
  Menu("Contact", listStartMenu),
  Menu("Store & Shop", listStartMenu),
  Menu("Shopping Carts & Checkout", listStartMenu),
  Menu("Navigation", listStartMenu),
  Menu("Photos", listStartMenu),
  Menu("Dashboard", listStartMenu),
];

final listStartMenu = [
  SubMenu("Start screen 1", StartScreen01()),
  SubMenu("Start screen 2", StartScreen02()),
  SubMenu("Start screen 3", StartScreen03()),
  SubMenu("Start screen 4", StartScreen04()),
  SubMenu("Start screen 5", StartScreen05()),
];

final listSignupMenu = [
  SubMenu("Signup screen 1", SignUpScreen01()),
  SubMenu("Signup screen 2", SignUpScreen02()),
  SubMenu("Signup screen 3", SignUpScreen03()),
  SubMenu("Signup screen 4", SignUpScreen04()),
  SubMenu("Signup screen 5", SignUpScreen05()),
];

final listWalkthroughMenu = [
  SubMenu("Walkthrough screen 1", WalkthroughScreen01()),
  SubMenu("Walkthrough screen 2", WalkthroughScreen02()),
  SubMenu("Walkthrough screen 3", WalkthroughScreen03()),
  SubMenu("Walkthrough screen 4", WalkthroughScreen04()),
  SubMenu("Walkthrough screen 5", WalkthroughScreen05()),
];

final listLoadingMenu = [
  SubMenu("Loading screen 1", LoadingScreen01()),
  SubMenu("Loading screen 2", LoadingScreen02()),
  SubMenu("Loading screen 3", LoadingScreen03()),
  SubMenu("Loading screen 4", LoadingScreen04()),
];

final listProfileMenu = [
  SubMenu("Profile screen 1", ProfileScreen01()),
  SubMenu("Profile screen 2", ProfileScreen02()),
  SubMenu("Profile screen 3", ProfileScreen03()),
  SubMenu("Profile screen 4", ProfileScreen04()),
  SubMenu("Profile screen 5", ProfileScreen05()),
];

final listFeedMenu = [
  SubMenu("Feed screen 1", FeedScreen01()),
  SubMenu("Feed screen 2", FeedScreen02()),
  SubMenu("Feed screen 3", FeedScreen03()),
  SubMenu("Feed screen 4", FeedScreen04()),
  SubMenu("Feed screen 5", FeedScreen05()),
];

final listArticleMenu = [
  SubMenu("Article screen 1", ArticleScreen01()),
  SubMenu("Article screen 2", ArticleScreen02()),
  SubMenu("Article screen 3", ArticleScreen03()),
  SubMenu("Article screen 4", ArticleScreen04()),
  SubMenu("Article screen 5", ArticleScreen05()),
];

final listActivityMenu = [
  SubMenu("Activity screen 1", ActivityScreen01()),
  SubMenu("Activity screen 2", ActivityScreen02()),
  SubMenu("Activity screen 3", ActivityScreen03()),
  SubMenu("Activity screen 4", ActivityScreen04()),
  SubMenu("Activity screen 5", ActivityScreen05()),
];
