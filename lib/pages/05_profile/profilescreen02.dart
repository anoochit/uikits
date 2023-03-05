import 'package:flutter/material.dart';

class ProfileScreen02 extends StatefulWidget {
  const ProfileScreen02({super.key});

  @override
  State<ProfileScreen02> createState() => _ProfileScreen02State();
}

class _ProfileScreen02State extends State<ProfileScreen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: (constraints.maxWidth > 412)
                      ? (constraints.maxWidth * 0.6)
                      : constraints.maxWidth,
                  padding: const EdgeInsets.only(
                      top: 48, bottom: 16, left: 16.0, right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      // replace avatar image here
                      CircleAvatar(
                        radius: 48,
                        backgroundImage: AssetImage('assets/images/avatar.png'),
                      ),
                      // place statistic here
                      BlockText(title: "Posts", value: 200),
                      BlockText(title: "Followers", value: 200),
                      BlockText(title: "Following", value: 200),
                    ],
                  ),
                ),
                SizedBox(
                  width: (constraints.maxWidth > 412)
                      ? (constraints.maxWidth * 0.6)
                      : constraints.maxWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        // replace display name here
                        child: const Text(
                          "John Doe",
                          style: TextStyle(fontSize: 24.0),
                        ),
                      ),
                      // replace profile detail here
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          "Id sint veniam non irure dolore enim ea. Sit sint cillum consectetur voluptate eiusmod. Ad excepteur cillum fugiat id aliquip exercitation.",
                        ),
                      )
                    ],
                  ),
                ),
                GridView.count(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: (constraints.maxWidth > 412) ? 4 : 2,
                  children: List.generate(
                    20,
                    (index) {
                      return Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset(
                          'assets/images/placeholder.png',
                          fit: BoxFit.cover,
                        ),
                      );
                    },
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$value',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(title),
        ],
      ),
    );
  }
}
