import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            GridItem(
              width: 1,
              height: 1,
            ),
            GridItem(
              width: 1,
              height: 1,
            ),
            GridItem(
              width: 1,
              height: 1,
            ),
            GridItem(
              width: 1,
              height: 1,
            ),
            GridItem(
              width: 2,
              height: 1,
            ),
            GridItem(
              width: 2,
              height: 1,
            ),
            GridItem(
              width: 1,
              height: 1,
            ),
            GridItem(
              width: 1,
              height: 1,
            ),
            GridItem(
              width: 2,
              height: 1,
            ),
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
  }) : super(key: key);

  final int width;
  final int height;
  @override
  Widget build(BuildContext context) {
    double scWidth = MediaQuery.of(context).size.width;
    double scHeight = MediaQuery.of(context).size.height;
    return Container(
      width: (context.isPhone) ? (scWidth / 1) : ((scWidth / 4) * width),
      height: (context.isPhone) ? (scWidth / 1) : ((scHeight / 4) * height),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(16.0),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: const Center(child: Text("Put widget here")),
    );
  }
}
