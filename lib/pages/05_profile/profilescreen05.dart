import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class ProfileScreen05 extends StatefulWidget {
  const ProfileScreen05({super.key});

  @override
  State<ProfileScreen05> createState() => _ProfileScreen05State();
}

class _ProfileScreen05State extends State<ProfileScreen05> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: constraints.maxWidth,
                      height: 220,
                      child: Image.asset(
                        'assets/images/placeholder.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // replace avatar image here
                            const CircleAvatar(
                              radius: 48,
                              backgroundImage:
                                  AssetImage('assets/images/avatar.png'),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              // replace display name here
                              child: Text(
                                "John Doe",
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4.0),
                              // replace display name here
                              child: Text(
                                "@johndoe",
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  width: (constraints.maxWidth > 412)
                      ? (constraints.maxWidth * 0.6)
                      : constraints.maxWidth,
                  child: const Row(
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
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const PostItem();
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  const PostItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final fifteenAgo = DateTime.now().subtract(const Duration(minutes: 15));

    return LayoutBuilder(
      builder: (context, constraints) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(16.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            children: [
              SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxWidth,
                // replace image
                child: Image.asset(
                  'assets/images/placeholder.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    TextButton.icon(
                      icon: const Icon(FontAwesomeIcons.thumbsUp),
                      onPressed: () {
                        // place link function here
                      },
                      label: const Text("Like"),
                    ),
                    TextButton.icon(
                      icon: const Icon(FontAwesomeIcons.comment),
                      onPressed: () {
                        // place comment function here
                      },
                      label: const Text("Comment"),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(timeago.format(fifteenAgo)),
                    )
                  ],
                ),
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
    super.key,
    required this.title,
    required this.value,
  });

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
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(title),
        ],
      ),
    );
  }
}
