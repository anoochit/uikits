import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class FeedScreen04 extends StatefulWidget {
  FeedScreen04({Key? key}) : super(key: key);

  @override
  _FeedScreen04State createState() => _FeedScreen04State();
}

class _FeedScreen04State extends State<FeedScreen04> {
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
      builder: (context, constraints) => Container(
        padding: EdgeInsets.only(bottom: 32.0),
        child: Column(
          children: [
            Container(
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
    );
  }
}
