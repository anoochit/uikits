import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class ActivityScreen02 extends StatefulWidget {
  const ActivityScreen02({super.key});

  @override
  State<ActivityScreen02> createState() => _ActivityScreen02State();
}

class _ActivityScreen02State extends State<ActivityScreen02> {
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
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(listActivity[index].avatar),
                      ),
                      title: Text(
                        "${listActivity[index].displeName} ${listActivity[index].action}",
                      ),
                      trailing: Text(timeago.format(
                          listActivity[index].timestamp,
                          locale: 'en_short')),
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
    DateTime.now().subtract(const Duration(minutes: 5)),
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
    DateTime.now().subtract(const Duration(minutes: 5)),
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
    DateTime.now().subtract(const Duration(minutes: 5)),
    [
      UserImage("assets/images/placeholder.png"),
      UserImage("assets/images/placeholder.png"),
      UserImage("assets/images/placeholder.png"),
    ],
  ),
];
