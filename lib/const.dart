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
import 'package:uikits2/pages/08_activity/activityscreen01.dart';
import 'package:uikits2/pages/08_activity/activityscreen02.dart';
import 'package:uikits2/pages/08_activity/activityscreen03.dart';
import 'package:uikits2/pages/08_activity/activityscreen04.dart';
import 'package:uikits2/pages/08_activity/activityscreen05.dart';
import 'package:uikits2/pages/09_create/createscreen01.dart';
import 'package:uikits2/pages/09_create/createscreen02.dart';
import 'package:uikits2/pages/09_create/createscreen03.dart';
import 'package:uikits2/pages/09_create/createscreen04.dart';
import 'package:uikits2/pages/10_chat/chatscreen01.dart';
import 'package:uikits2/pages/10_chat/chatscreen02.dart';
import 'package:uikits2/pages/10_chat/chatscreen03.dart';
import 'package:uikits2/pages/11_contact/contactscreen01.dart';
import 'package:uikits2/pages/11_contact/contactscreen02.dart';
import 'package:uikits2/pages/11_contact/contactscreen03.dart';
import 'package:uikits2/pages/12_store/storescreen01.dart';
import 'package:uikits2/pages/12_store/storescreen02.dart';
import 'package:uikits2/pages/12_store/storescreen03.dart';
import 'package:uikits2/pages/12_store/storescreen04.dart';
import 'package:uikits2/pages/13_shoppingcart/shoppingcart01.dart';
import 'package:uikits2/pages/13_shoppingcart/shoppingcart02.dart';
import 'package:uikits2/pages/13_shoppingcart/shoppingcart03.dart';
import 'package:uikits2/pages/13_shoppingcart/shoppingcart04.dart';
import 'package:uikits2/pages/14_navigation/navigationscreen01.dart';
import 'package:uikits2/pages/14_navigation/navigationscreen02.dart';
import 'package:uikits2/pages/14_navigation/navigationscreen03.dart';
import 'package:uikits2/pages/15_photos/photoscreen01.dart';
import 'package:uikits2/pages/15_photos/photoscreen02.dart';
import 'package:uikits2/pages/15_photos/photoscreen03.dart';
import 'package:uikits2/pages/16_dashboard/dashboardscreen01.dart';
import 'package:uikits2/pages/16_dashboard/dashboardscreen02.dart';
import 'package:uikits2/pages/17_m3/material_u01.dart';
import 'package:uikits2/pages/17_m3/material_u02.dart';
import 'package:uikits2/pages/18_dualscreen/twopane_screen01.dart';
import 'package:uikits2/pages/18_dualscreen/twopane_screen02.dart';

import 'pages/02_signup/signupscreen06.dart';

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
  UnDrawIllustration.feedback,
  UnDrawIllustration.post,
  UnDrawIllustration.chat_bot,
  UnDrawIllustration.content_team,
  UnDrawIllustration.shopping,
  UnDrawIllustration.card_postal,
  UnDrawIllustration.navigation,
  UnDrawIllustration.photo_album,
  UnDrawIllustration.dashboard,
  UnDrawIllustration.mobile_application,
  UnDrawIllustration.mobile_application,
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
  listCreateMenu,
  listChatMenu,
  listContactMenu,
  listStoreMenu,
  listShoppingCartMenu,
  listNavigationMenu,
  listPhotoMenu,
  listDashboardMenu,
  listM3Menu,
  listTwoPaneMenu,
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
  Menu("Create", listCreateMenu),
  Menu("Chat", listChatMenu),
  Menu("Contact", listContactMenu),
  Menu("Store & Shop", listStoreMenu),
  Menu("Shopping Carts & Checkout", listShoppingCartMenu),
  Menu("Navigation", listNavigationMenu),
  Menu("Photos", listPhotoMenu),
  Menu("Dashboard", listDashboardMenu),
  Menu("Material U", listM3Menu),
  Menu("Two Pane", listTwoPaneMenu),
];

final listStartMenu = [
  SubMenu("Start screen 1", const StartScreen01()),
  SubMenu("Start screen 2", const StartScreen02()),
  SubMenu("Start screen 3", const StartScreen03()),
  SubMenu("Start screen 4", const StartScreen04()),
  SubMenu("Start screen 5", const StartScreen05()),
];

final listSignupMenu = [
  SubMenu("Signup screen 1", const SignUpScreen01()),
  SubMenu("Signup screen 2", const SignUpScreen02()),
  SubMenu("Signup screen 3", const SignUpScreen03()),
  SubMenu("Signup screen 4", const SignUpScreen04()),
  SubMenu("Signup screen 5", const SignUpScreen05()),
  SubMenu("Signup screen 6", const SignUpScreen06()),
];

final listWalkthroughMenu = [
  SubMenu("Walkthrough screen 1", const WalkthroughScreen01()),
  SubMenu("Walkthrough screen 2", const WalkthroughScreen02()),
  SubMenu("Walkthrough screen 3", const WalkthroughScreen03()),
  SubMenu("Walkthrough screen 4", const WalkthroughScreen04()),
  SubMenu("Walkthrough screen 5", const WalkthroughScreen05()),
];

final listLoadingMenu = [
  SubMenu("Loading screen 1", const LoadingScreen01()),
  SubMenu("Loading screen 2", const LoadingScreen02()),
  SubMenu("Loading screen 3", const LoadingScreen03()),
  SubMenu("Loading screen 4", const LoadingScreen04()),
];

final listProfileMenu = [
  SubMenu("Profile screen 1", const ProfileScreen01()),
  SubMenu("Profile screen 2", const ProfileScreen02()),
  SubMenu("Profile screen 3", const ProfileScreen03()),
  SubMenu("Profile screen 4", const ProfileScreen04()),
  SubMenu("Profile screen 5", const ProfileScreen05()),
];

final listFeedMenu = [
  SubMenu("Feed screen 1", const FeedScreen01()),
  SubMenu("Feed screen 2", const FeedScreen02()),
  SubMenu("Feed screen 3", const FeedScreen03()),
  SubMenu("Feed screen 4", const FeedScreen04()),
  SubMenu("Feed screen 5", const FeedScreen05()),
];

final listArticleMenu = [
  SubMenu("Article screen 1", const ArticleScreen01()),
  SubMenu("Article screen 2", const ArticleScreen02()),
  SubMenu("Article screen 3", const ArticleScreen03()),
  SubMenu("Article screen 4", const ArticleScreen04()),
  SubMenu("Article screen 5", const ArticleScreen05()),
];

final listActivityMenu = [
  SubMenu("Activity screen 1", const ActivityScreen01()),
  SubMenu("Activity screen 2", const ActivityScreen02()),
  SubMenu("Activity screen 3", const ActivityScreen03()),
  SubMenu("Activity screen 4", const ActivityScreen04()),
  SubMenu("Activity screen 5", const ActivityScreen05()),
];

final listCreateMenu = [
  SubMenu("Create screen 1", const CreateScreen01()),
  SubMenu("Create screen 2", const CreateScreen02()),
  SubMenu("Create screen 3", const CreateScreen03()),
  SubMenu("Create screen 4", const CreateScreen04()),
];

final listChatMenu = [
  SubMenu("Chat screen 1", const ChatScreen01()),
  SubMenu("Chat screen 2", const ChatScreen02()),
  SubMenu("Chat screen 3", const ChatScreen03()),
];

final listContactMenu = [
  SubMenu("Contact screen 1", const ContactScreen01()),
  SubMenu("Contact screen 2", const ContactScreen02()),
  SubMenu("Contact screen 3", const ContactScreen03()),
];

final listStoreMenu = [
  SubMenu("Store screen 1", const StoreScreen01()),
  SubMenu("Store screen 2", const StoreScreen02()),
  SubMenu("Store screen 3", const StoreScreen03()),
  SubMenu("Store screen 4", const StoreScreen04()),
];

final listShoppingCartMenu = [
  SubMenu("Shopping Cart screen 1", const ShoppingCartScreen01()),
  SubMenu("Shopping Cart screen 2", const ShoppingCartScreen02()),
  SubMenu("Shopping Cart screen 3", const ShoppingCartScreen03()),
  SubMenu("Shopping Cart screen 4", const ShoppingCartScreen04()),
];

final listNavigationMenu = [
  SubMenu("Navigation screen 1", const NavigationScreen01()),
  SubMenu("Navigation screen 2", const NavigationScreen02()),
  SubMenu("Navigation screen 3", const NavigationScreen03()),
];

final listPhotoMenu = [
  SubMenu("Photo screen 1", const PhotoScreen01()),
  SubMenu("Photo screen 2", const PhotoScreen02()),
  SubMenu("Photo screen 3", const PhotoScreen03()),
];

final listDashboardMenu = [
  SubMenu("Dashboard screen 1", const DashboardScreen01()),
  SubMenu("Dashboard screen 2", const DashboardScreen02()),
];

final listM3Menu = [
  SubMenu("Navigation Rails", const MaterialUScreen01()),
  SubMenu("Silver AppBar", const MaterialUScreen02()),
];

final listTwoPaneMenu = [
  SubMenu("Two Pane", const TwoPaneScreen()),
  SubMenu("Two Pane Split", const TwoPaneSlitScreen()),
];
