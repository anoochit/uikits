import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:uikits2/pages/18_twopane/controller/twopane_controller.dart';

class BlankScreen extends StatelessWidget {
  final String title;
  final bool isMainScreen;

  BlankScreen({
    super.key,
    required this.title,
    required this.isMainScreen,
  });

  final TwoPaneController controller = Get.find<TwoPaneController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title),
            (isMainScreen)
                ? ElevatedButton(
                    child: const Text("Open new screen"),
                    onPressed: () {
                      controller.push(
                        widget: BlankScreen(
                          title: 'Screen ${controller.listScreen.length}',
                          isMainScreen: false,
                        ),
                      );
                    },
                  )
                : Column(
                    children: [
                      ElevatedButton(
                        child: const Text("Open new screen"),
                        onPressed: () {
                          controller.push(
                            widget: BlankScreen(
                              title: 'Screen ${controller.listScreen.length}',
                              isMainScreen: false,
                            ),
                          );
                        },
                      ),
                      ElevatedButton(
                        child: const Text("pop"),
                        onPressed: () {
                          controller.pop();
                        },
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
