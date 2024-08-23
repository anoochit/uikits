import 'package:flutter/material.dart';

import 'package:uikits2/pages/17_materialu/landscape_screen.dart';
import 'package:uikits2/pages/17_materialu/portrait_screen.dart';

class MaterialUScreen01 extends StatefulWidget {
  const MaterialUScreen01({super.key});

  @override
  State<MaterialUScreen01> createState() => _MaterialUScreen01State();
}

class _MaterialUScreen01State extends State<MaterialUScreen01> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return const PortraitScreen();
        } else {
          return const LandscapeScreen();
        }
      },
    );
  }
}
