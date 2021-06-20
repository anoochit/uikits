import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:timeago/timeago.dart' as timeago;

class ActivityScreen01 extends StatefulWidget {
  ActivityScreen01({Key? key}) : super(key: key);

  @override
  _ActivityScreen01State createState() => _ActivityScreen01State();
}

class _ActivityScreen01State extends State<ActivityScreen01> {
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
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                      itemCount: listActivity.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(listActivity[index].avatar),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      listActivity[index].displeName,
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(listActivity[index].action),
                                  ),
                                  Spacer(),
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(timeago.format(listActivity[index].timestamp)),
                                  ),
                                ],
                              ),
                              Container(
                                width: constraints.maxWidth,
                                height: 200,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: listActivity[index].imageList.length,
                                  itemBuilder: (context, imageIndex) {
                                    return Container(
                                      width: 200,
                                      height: 200,
                                      padding: EdgeInsets.all(1),
                                      child: Image.asset(
                                        listActivity[index].imageList[imageIndex].url,
                                        fit: BoxFit.cover,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
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

// sample data
class Avticity {
  final String displeName;
  final String avatar;
  final String action;
  final DateTime timestamp;
  final List<UserImage> imageList;

  Avticity(this.displeName, this.avatar, this.action, this.timestamp, this.imageList);
}

class UserImage {
  final String url;
  UserImage(this.url);
}

final listActivity = [
  Avticity(
    "John Doe",
    "assets/images/placeholder.png",
    "liked your photo",
    new DateTime.now().subtract(new Duration(minutes: 5)),
    [
      UserImage("assets/images/placeholder.png"),
      UserImage("assets/images/placeholder.png"),
    ],
  ),
  Avticity(
    "Nancy Joe",
    "assets/images/placeholder.png",
    "liked your photo",
    new DateTime.now().subtract(new Duration(minutes: 10)),
    [
      UserImage("assets/images/placeholder.png"),
      UserImage("assets/images/placeholder.png"),
      UserImage("assets/images/placeholder.png"),
      UserImage("assets/images/placeholder.png"),
      UserImage("assets/images/placeholder.png"),
    ],
  ),
  Avticity(
    "July Dun",
    "assets/images/placeholder.png",
    "liked your photo",
    new DateTime.now().subtract(new Duration(minutes: 15)),
    [
      UserImage("assets/images/placeholder.png"),
      UserImage("assets/images/placeholder.png"),
      UserImage("assets/images/placeholder.png"),
    ],
  ),
  Avticity(
    "Jelly Bun",
    "assets/images/placeholder.png",
    "liked your photo",
    new DateTime.now().subtract(new Duration(minutes: 15)),
    [
      UserImage("assets/images/placeholder.png"),
      UserImage("assets/images/placeholder.png"),
      UserImage("assets/images/placeholder.png"),
    ],
  ),
];
