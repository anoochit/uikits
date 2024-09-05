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
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxWidth * 0.5,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://picsum.photos/seed/picsum/300/300',
                        ),
                        fit: BoxFit.cover,
                      ),
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
                              backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/1182518?v=4',
                              ),
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
                                      Theme.of(context).textTheme.headlineLarge,
                                ),
                                Text(
                                  "@johndoe",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              GridView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                ),
                itemBuilder: (context, index) => const PostItem(),
              ),
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
    final fifteenAgo = DateTime.now().subtract(
      const Duration(
        minutes: 15,
      ),
    );

    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        children: [
          // image
          Container(
            alignment: Alignment.topCenter,
            child: Image.network(
              'https://picsum.photos/id/870/600/600',
              fit: BoxFit.cover,
            ),
          ),

          // tool bar
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Theme.of(context).colorScheme.surface,
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
                    child: Text(
                      timeago.format(fifteenAgo),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
