import 'package:flutter/material.dart';

class DashboardScreen01 extends StatefulWidget {
  DashboardScreen01({Key? key}) : super(key: key);

  @override
  _DashboardScreen01State createState() => _DashboardScreen01State();
}

class _DashboardScreen01State extends State<DashboardScreen01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            GridItem(width: 1, height: 1, offset: 0),
            GridItem(width: 1, height: 1, offset: 0),
            GridItem(width: 1, height: 1, offset: 0),
            GridItem(width: 1, height: 1, offset: 0),
            GridItem(width: 2, height: 1, offset: 0),
            GridItem(width: 2, height: 1, offset: 0),
            GridItem(width: 1, height: 1, offset: 0),
            GridItem(width: 1, height: 1, offset: 0),
            GridItem(width: 2, height: 1, offset: 0),
            // GridItem(width: 1, height: 1, offset: 0),
            // GridItem(width: 3, height: 1, offset: 0),
            // GridItem(width: 4, height: 1, offset: 0),
          ],
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  const GridItem({
    Key? key,
    required this.width,
    required this.height,
    required this.offset,
  }) : super(key: key);

  final int width;
  final int height;
  final double offset;
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width - offset;
    var _height = MediaQuery.of(context).size.height;
    var _constrainWidth = width;

    // if mobile overide width to 4 grid
    if ((MediaQuery.of(context).size.width < 412)) {
      _constrainWidth = 4;
    }

    // Put something in this container
    return Container(
      width: ((_width * (0.25 * _constrainWidth))),
      height: ((_height * (0.25 * height))),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(6),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Text("Put widget here"),
    );
  }
}
