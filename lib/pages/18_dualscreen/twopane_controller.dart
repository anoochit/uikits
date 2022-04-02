import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TwoPaneController extends GetxController {
  List<Widget> listScreen = [];

  push({required Widget widget}) {
    listScreen.add(widget);
    log('push screen total = ${listScreen.length}');
    update(['', 'main']);
  }

  pop() {
    if (listScreen.length > 1) {
      listScreen.removeLast();
    }
    update(['', 'main']);
  }
}
