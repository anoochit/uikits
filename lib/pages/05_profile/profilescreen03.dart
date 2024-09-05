import 'package:flutter/material.dart';

class ProfileScreen03 extends StatefulWidget {
  const ProfileScreen03({super.key});

  @override
  State<ProfileScreen03> createState() => _ProfileScreen03State();
}

class _ProfileScreen03State extends State<ProfileScreen03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 48.0),
                  width: constraints.maxWidth,
                  child:
                      // replace avatar image here
                      Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/1182518?v=4',
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        // replace display name here
                        child: Text(
                          "John Doe",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        // replace display name here
                        child: Text(
                          "@johndoe",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: (constraints.maxWidth > 412)
                      ? (constraints.maxWidth * 0.6)
                      : constraints.maxWidth,
                  padding: const EdgeInsets.all(8.0),
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
                GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.network(
                      'https://picsum.photos/seed/picsum/300/300',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          );
        },
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
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
