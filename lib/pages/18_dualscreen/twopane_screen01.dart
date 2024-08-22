import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:uikits2/pages/18_dualscreen/blank_screen.dart';
import 'package:uikits2/pages/18_dualscreen/controller/twopane_controller.dart';
import 'package:uikits2/pages/18_dualscreen/widgets/twopane_widget.dart';

class TwoPaneScreen extends StatefulWidget {
  const TwoPaneScreen({super.key});

  @override
  State<TwoPaneScreen> createState() => _TwoPaneScreenState();
}

class _TwoPaneScreenState extends State<TwoPaneScreen> {
  TwoPaneController controller = Get.put(TwoPaneController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // if no screen in list load main screen
    if (controller.listScreen.isEmpty) {
      // load main screen
      controller.push(
          widget: BlankScreen(title: "Main Screen", isMainScreen: true));
      controller.update();
    }
    // load screen into pane, use indexed stack to switch between screen
    log('number of screen = ${controller.listScreen.length}');
    log('load screen...');

    // check back button then popout indexed stack
    return WillPopScope(
      onWillPop: () async {
        log("back pressed");
        if (controller.listScreen.length > 1) {
          controller.pop();
          return (false);
        } else {
          return (true);
        }
      },
      // show screen in two pane
      child: GetBuilder<TwoPaneController>(
        id: 'main',
        init: TwoPaneController(),
        builder: (c) {
          // show single pane for first screen aka main screen
          if (c.listScreen.length <= 1) {
            return TwoPaneWidget(
              pane1: IndexedStack(
                index: 0,
                children: c.listScreen.map((e) {
                  return e;
                }).toList(),
              ),
              pane2: null,
            );
          } else {
            // show another screen switch pane right to left
            return TwoPaneWidget(
              pane1: IndexedStack(
                index: c.listScreen.length - 2,
                children: c.listScreen.map((e) {
                  return e;
                }).toList(),
              ),
              pane2: IndexedStack(
                index: c.listScreen.length - 1,
                children: c.listScreen.map((e) {
                  return e;
                }).toList(),
              ),
            );
          }
        },
      ),
    );
  }
}
