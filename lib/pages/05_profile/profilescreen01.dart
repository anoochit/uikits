import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class ProfileScreen01 extends StatefulWidget {
  ProfileScreen01({Key? key}) : super(key: key);

  @override
  _ProfileScreen01State createState() => _ProfileScreen01State();
}

class _ProfileScreen01State extends State<ProfileScreen01> {
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
        body: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    child: Stack(
                      children: [
                        // replace background image here
                        Container(
                          width: constraints.maxWidth,
                          height: 175,
                          child: Image.asset(
                            'assets/images/placeholder.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 16,
                          bottom: 16,
                          child: Row(
                            children: [
                              // avatar
                              Container(
                                width: 80,
                                height: 80,
                                // replace avatar image here
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('assets/images/avatar.png'),
                                ),
                              ),

                              // name
                              SizedBox(width: 16),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "John Doe",
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                  Text("@johndoe"),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: List.generate(
                      10,
                      (index) {
                        return PostItem();
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        }),
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
