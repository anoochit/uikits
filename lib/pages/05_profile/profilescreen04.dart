import 'package:flutter/material.dart';

class ProfileScreen04 extends StatefulWidget {
  const ProfileScreen04({super.key});

  @override
  State<ProfileScreen04> createState() => _ProfileScreen04State();
}

class _ProfileScreen04State extends State<ProfileScreen04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        automaticallyImplyLeading: false,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    // if index == 0 insert divider with title "Friends"
                    // if index == 5 indert divider with title "Nearby Friends"
                    if ((index == 0) || (index == 5)) {
                      return ListDivider(
                        constraints: constraints,
                        index: index,
                      );
                    }
                    return ListItem(index: index);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListDivider extends StatelessWidget {
  const ListDivider({
    super.key,
    required this.constraints,
    required this.index,
  });

  final BoxConstraints constraints;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text((index == 0) ? "Friends" : "Nearby Friends"),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 24,
        backgroundImage: NetworkImage(
          'https://avatars.githubusercontent.com/u/1182518?v=4',
        ),
      ),
      title: Text('item $index'),
    );
  }
}
