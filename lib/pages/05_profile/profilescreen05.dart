import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class ProfileScreen05 extends StatefulWidget {
  ProfileScreen05({Key? key}) : super(key: key);

  @override
  _ProfileScreen05State createState() => _ProfileScreen05State();
}

class _ProfileScreen05State extends State<ProfileScreen05> {
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
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: constraints.maxWidth,
                        height: 220,
                        child: Image.asset(
                          'assets/images/placeholder.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 48.0),
                        width: constraints.maxWidth,
                        child: Column(
                          children: [
                            // replace avatar image here
                            CircleAvatar(
                              radius: 42,
                              backgroundImage: AssetImage('assets/images/avatar.png'),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              // replace display name here
                              child: Text(
                                "John Doe",
                                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(4.0),
                              // replace display name here
                              child: Text(
                                "@johndoe",
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    width: (constraints.maxWidth > 412) ? (constraints.maxWidth * 0.6) : constraints.maxWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // place statistic here
                        BlockText(title: "Posts", value: 200),
                        BlockText(title: "Followers", value: 200),
                        BlockText(title: "Following", value: 200),
                      ],
                    ),
                  ),
                  ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return PostItem();
                    },
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  const PostItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fifteenAgo = new DateTime.now().subtract(new Duration(minutes: 15));

    return LayoutBuilder(
      builder: (context, constraints) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(12),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            children: [
              Container(
                width: constraints.maxWidth,
                height: constraints.maxWidth,
                // replace image
                child: Image.asset(
                  'assets/images/placeholder.png',
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                children: [
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      IconButton(
                        icon: Icon(FontAwesomeIcons.thumbsUp),
                        onPressed: () {
                          // place link function here
                        },
                      ),
                      Text("Like")
                    ],
                  ),
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      IconButton(
                        icon: Icon(FontAwesomeIcons.comment),
                        onPressed: () {
                          // place comment function here
                        },
                      ),
                      Text("Comment")
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(timeago.format(fifteenAgo)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BlockText extends StatelessWidget {
  const BlockText({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$value',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(title),
        ],
      ),
    );
  }
}
