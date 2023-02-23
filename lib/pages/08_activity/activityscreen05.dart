import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class ActivityScreen05 extends StatefulWidget {
  ActivityScreen05({Key? key}) : super(key: key);

  @override
  _ActivityScreen05State createState() => _ActivityScreen05State();
}

class _ActivityScreen05State extends State<ActivityScreen05> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity"),
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
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Nulla tempor cillum deserunt id ipsum consectetur nulla elit dolor occaecat esse. Veniam veniam duis velit dolor fugiat. Amet enim sit aliquip ea deserunt magna velit est ipsum quis Lorem deserunt.',
                        ),
                      ),
                    ),
                    node: TimelineNode(
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
