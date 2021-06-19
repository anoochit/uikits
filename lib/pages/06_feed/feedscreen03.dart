import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class FeedScreen03 extends StatefulWidget {
  FeedScreen03({Key? key}) : super(key: key);

  @override
  _FeedScreen03State createState() => _FeedScreen03State();
}

class _FeedScreen03State extends State<FeedScreen03> {
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
          builder: (context, constraints) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Feed",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return PostItem();
                    },
                  ),
                ),
              ),
            ],
          ),
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
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    // replace avatar image here
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/placeholder.png'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 16.0, bottom: 2.0),
                          // replace display name here
                          child: Text(
                            "John Doe",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 2.0),
                          child: Text(timeago.format(fifteenAgo), style: TextStyle(fontSize: 12.0)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: constraints.maxWidth,
                // replace image
                child: Image.asset(
                  'assets/images/placeholder.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                // replace post description
                child: Text(
                  "Amet anim aliquip cillum pariatur non non dolor velit non esse mollit ut veniam nostrud. Ullamco ex eu culpa voluptate ea consectetur quis in. Ex aliquip culpa dolore duis officia nostrud culpa magna minim cupidatat amet tempor aliquip nulla.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Divider(
                color: Colors.grey.shade100,
                thickness: 1,
                height: 1,
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
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      IconButton(
                        icon: Icon(FontAwesomeIcons.share),
                        onPressed: () {
                          // place comment function here
                        },
                      ),
                      Text("Share")
                    ],
                  ),
                  SizedBox(width: 8.0)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
