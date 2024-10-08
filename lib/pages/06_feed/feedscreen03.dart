import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class FeedScreen03 extends StatefulWidget {
  const FeedScreen03({super.key});

  @override
  State<FeedScreen03> createState() => _FeedScreen03State();
}

class _FeedScreen03State extends State<FeedScreen03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feed"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: SizedBox(
                    width: (constraints.maxWidth > 412)
                        ? (constraints.maxWidth * 0.5)
                        : constraints.maxWidth,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const PostItem();
                      },
                    ),
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
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final fifteenAgo = DateTime.now().subtract(const Duration(minutes: 15));

    return LayoutBuilder(
      builder: (context, constraints) => Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      // replace avatar image here
                      const CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage('assets/images/avatar.png'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "John Doe",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(timeago.format(fifteenAgo),
                                style: const TextStyle(fontSize: 12.0)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: constraints.maxWidth,
                  // replace image
                  child: Image.asset(
                    'assets/images/placeholder.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  // replace post description
                  child: const Text(
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
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
                      TextButton.icon(
                        icon: const Icon(FontAwesomeIcons.share),
                        onPressed: () {
                          // place comment function here
                        },
                        label: const Text("Share"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
