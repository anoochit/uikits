import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class FeedScreen05 extends StatefulWidget {
  const FeedScreen05({super.key});

  @override
  State<FeedScreen05> createState() => _FeedScreen05State();
}

class _FeedScreen05State extends State<FeedScreen05> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Timeline"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                // see more timeline plugin doc at https://pub.dev/packages/timelines
                child: Timeline.tileBuilder(
                  builder: TimelineTileBuilder.fromStyle(
                    contentsAlign: ContentsAlign.alternating,
                    contentsBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Text('Timeline Event $index'),
                    ),
                    itemCount: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
