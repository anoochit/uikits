import 'package:flutter/material.dart';

class ProfileScreen03 extends StatefulWidget {
  ProfileScreen03({Key? key}) : super(key: key);

  @override
  _ProfileScreen03State createState() => _ProfileScreen03State();
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
                  padding: EdgeInsets.only(top: 48.0),
                  width: constraints.maxWidth,
                  child:
                      // replace avatar image here
                      Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/avatar.png'),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        // replace display name here
                        child: Text(
                          "John Doe",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        // replace display name here
                        child: Text(
                          "@johndoe",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: (constraints.maxWidth > 412)
                      ? (constraints.maxWidth * 0.6)
                      : constraints.maxWidth,
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // place statistic here
                      BlockText(title: "Posts", value: 200),
                      BlockText(title: "Followers", value: 200),
                      BlockText(title: "Following", value: 200),
                    ],
                  ),
                ),
                GridView.count(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: (constraints.maxWidth > 412) ? 4 : 2,
                  children: List.generate(20, (index) {
                    return Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.asset(
                        'assets/images/placeholder.png',
                        fit: BoxFit.cover,
                      ),
                    );
                  }),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$value',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(title),
        ],
      ),
    );
  }
}
