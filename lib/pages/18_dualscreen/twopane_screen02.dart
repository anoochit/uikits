import 'package:flutter/material.dart';
import 'package:multi_split_view/multi_split_view.dart';

class TwoPaneSlitScreen extends StatefulWidget {
  const TwoPaneSlitScreen({Key? key}) : super(key: key);

  @override
  State<TwoPaneSlitScreen> createState() => _TwoPaneSlitScreenState();
}

class _TwoPaneSlitScreenState extends State<TwoPaneSlitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiSplitView(
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
          children: [
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.blue,
            ),
          ]),
    );
  }
}
