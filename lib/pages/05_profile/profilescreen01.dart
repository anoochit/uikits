import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class ProfileScreen01 extends StatefulWidget {
  const ProfileScreen01({super.key});

  @override
  State<ProfileScreen01> createState() => _ProfileScreen01State();
}

class _ProfileScreen01State extends State<ProfileScreen01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  // replace background image here
                  SizedBox(
                    width: constraints.maxWidth,
                    height: constraints.maxWidth * 0.5,
                    child: Image.asset(
                      'assets/images/placeholder.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            // avatar
                            const CircleAvatar(
                              radius: 32,
                              backgroundImage:
                                  AssetImage('assets/images/avatar.png'),
                            ),

                            // name
                            const SizedBox(width: 16),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "John Doe",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                const Text("@johndoe"),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: List.generate(
                  10,
                  (index) {
                    return const PostItem();
                  },
                ),
              )
            ],
          ),
        );
      }),
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
