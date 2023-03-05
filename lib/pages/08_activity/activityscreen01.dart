import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class ActivityScreen01 extends StatefulWidget {
  const ActivityScreen01({super.key});

  @override
  State<ActivityScreen01> createState() => _ActivityScreen01State();
}

class _ActivityScreen01State extends State<ActivityScreen01> {
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
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                  itemCount: listActivity.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage(listActivity[index].avatar),
                              ),
                            ),
                            Text(
                              listActivity[index].displeName,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(listActivity[index].action),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                timeago.format(listActivity[index].timestamp),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: constraints.maxWidth,
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: listActivity[index].imageList.length,
                            itemBuilder: (context, imageIndex) {
                              return Container(
                                width: 200,
                                height: 200,
                                padding: const EdgeInsets.all(1),
                                child: Image.asset(
                                  listActivity[index].imageList[imageIndex].url,
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
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

  Avticity(this.displeName, this.avatar, this.action, this.timestamp,
      this.imageList);
}

class UserImage {
  final String url;
  UserImage(this.url);
}

final listActivity = [
  Avticity(
    "John Doe",
    "assets/images/avatar.png",
    "liked your photo",
    DateTime.now().subtract(const Duration(minutes: 5)),
    [
      UserImage("assets/images/placeholder.png"),
      UserImage("assets/images/placeholder.png"),
    ],
  ),
  Avticity(
    "Nancy Joe",
    "assets/images/avatar.png",
    "liked your photo",
    DateTime.now().subtract(const Duration(minutes: 10)),
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
    "assets/images/avatar.png",
    "liked your photo",
    DateTime.now().subtract(const Duration(minutes: 15)),
    [
      UserImage("assets/images/placeholder.png"),
      UserImage("assets/images/placeholder.png"),
      UserImage("assets/images/placeholder.png"),
    ],
  ),
  Avticity(
    "Jelly Bun",
    "assets/images/avatar.png",
    "liked your photo",
    DateTime.now().subtract(const Duration(minutes: 20)),
    [
      UserImage("assets/images/placeholder.png"),
      UserImage("assets/images/placeholder.png"),
      UserImage("assets/images/placeholder.png"),
    ],
  ),
];
