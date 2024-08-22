import 'package:flutter/material.dart';

import 'package:timelines/timelines.dart';

class ActivityScreen05 extends StatefulWidget {
  const ActivityScreen05({super.key});

  @override
  State<ActivityScreen05> createState() => _ActivityScreen05State();
}

class _ActivityScreen05State extends State<ActivityScreen05> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Activity"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Timeline.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return TimelineTile(
                    nodePosition: 0.05,
                    contents: Card(
                      child: Container(
                        width: constraints.maxWidth * 0.8,
                        padding: const EdgeInsets.all(16.0),
                        child: const Text(
                          'Nulla tempor cillum deserunt id ipsum consectetur nulla elit dolor occaecat esse. Veniam veniam duis velit dolor fugiat. Amet enim sit aliquip ea deserunt magna velit est ipsum quis Lorem deserunt.',
                        ),
                      ),
                    ),
                    node: const TimelineNode(
                      indicator: DotIndicator(),
                      startConnector: SolidLineConnector(),
                      endConnector: SolidLineConnector(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
