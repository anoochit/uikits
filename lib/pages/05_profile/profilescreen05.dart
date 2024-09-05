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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image:
                      NetworkImage('https://picsum.photos/1080/600?grayscale'),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: kToolbarHeight,
                  ),
                  // profile avatar
                  Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // replace avatar image here
                          const CircleAvatar(
                            radius: 48,
                            backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/1182518?v=4',
                            ),
                          ),
                          Text(
                            "John Doe",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            "@johndoe",
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(height: 16.0),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // statistic
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // place statistic here
                  BlockText(
                    title: "Posts",
                    value: 200,
                  ),
                  BlockText(
                    title: "Followers",
                    value: 200,
                  ),
                  BlockText(
                    title: "Following",
                    value: 200,
                  ),
                ],
              ),
            ),

            // gridview
            GridView.builder(
              padding: const EdgeInsets.only(top: 0),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const PostItem();
              },
            ),
          ],
        ),
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

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          SizedBox(
            // replace image
            child: Image.network(
              'https://picsum.photos/seed/picsum/600/600',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Theme.of(context).colorScheme.surface,
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
            ),
          )
        ],
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
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
