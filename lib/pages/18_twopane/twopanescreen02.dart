import 'package:flutter/material.dart';

import 'package:multi_split_view/multi_split_view.dart';

class TwoPaneSlitScreen extends StatefulWidget {
  const TwoPaneSlitScreen({super.key});

  @override
  State<TwoPaneSlitScreen> createState() => _TwoPaneSlitScreenState();
}

class _TwoPaneSlitScreenState extends State<TwoPaneSlitScreen> {
  final MultiSplitViewController _controller = MultiSplitViewController();

  @override
  void initState() {
    _controller.areas = [
      Area(
        data: Container(
          color: Colors.amber,
        ),
      ),
      Area(
        data: Container(
          color: Colors.blue,
        ),
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiSplitViewTheme(
        data: MultiSplitViewThemeData(),
        child: MultiSplitView(
          controller: _controller,
          dividerBuilder:
              (axis, index, resizable, dragging, highlighted, themeData) =>
                  Container(
            color: dragging ? Colors.grey[800] : Colors.grey[100],
            child: Icon(
              Icons.drag_indicator_outlined,
              color: highlighted ? Colors.grey[600] : Colors.grey[400],
              size: 8.0,
            ),
          ),
          builder: (context, area) {
            return Container(
              child: area.data,
            );
          },
        ),
      ),
    );
  }
}
