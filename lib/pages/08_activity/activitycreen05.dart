import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:timelines/timelines.dart';

class ActivityScreen05 extends StatefulWidget {
  ActivityScreen05({Key? key}) : super(key: key);

  @override
  _ActivityScreen05State createState() => _ActivityScreen05State();
}

class _ActivityScreen05State extends State<ActivityScreen05> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // transparent status bar
        systemNavigationBarColor: Colors.black, // navigation bar color
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness: Brightness.dark, //navigation bar icons' color
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: Text("Activity", style: TextStyle(color: Colors.black)),
        //   titleSpacing: 0,
        //   backgroundColor: Colors.white,
        //   iconTheme: IconThemeData(color: Colors.black),
        // ),
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    child: Text(
                      "Activity",
                      style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  child: Timeline.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return TimelineTile(
                        nodePosition: 0.05,
                        contents: Card(
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                                'Nulla tempor cillum deserunt id ipsum consectetur nulla elit dolor occaecat esse. Veniam veniam duis velit dolor fugiat. Amet enim sit aliquip ea deserunt magna velit est ipsum quis Lorem deserunt.'),
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
        ),
      ),
    );
  }
}
