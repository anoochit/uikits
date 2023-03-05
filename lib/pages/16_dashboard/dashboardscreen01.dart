import 'package:flutter/material.dart';

class DashboardScreen01 extends StatefulWidget {
  const DashboardScreen01({super.key});

  @override
  State<DashboardScreen01> createState() => _DashboardScreen01State();
}

class _DashboardScreen01State extends State<DashboardScreen01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Wrap(
          direction: Axis.horizontal,
          children: const [
            GridItem(width: 1, height: 1, offset: 0),
            GridItem(width: 1, height: 1, offset: 0),
            GridItem(width: 1, height: 1, offset: 0),
            GridItem(width: 1, height: 1, offset: 0),
            GridItem(width: 2, height: 1, offset: 0),
            GridItem(width: 2, height: 1, offset: 0),
            GridItem(width: 1, height: 1, offset: 0),
            GridItem(width: 1, height: 1, offset: 0),
            GridItem(width: 2, height: 1, offset: 0),
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
    var width = MediaQuery.of(context).size.width - offset;
    var height = MediaQuery.of(context).size.height;
    var constrainWidth = width;

    // if mobile overide width to 4 grid
    if ((MediaQuery.of(context).size.width < 412)) {
      constrainWidth = 4;
    }

    // Put something in this container
    return Container(
      width: ((width * (0.25 * constrainWidth))),
      height: ((height * (0.25 * height))),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(6),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: const Text("Put widget here"),
    );
  }
}
