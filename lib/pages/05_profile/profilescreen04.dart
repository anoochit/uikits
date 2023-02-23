import 'package:flutter/material.dart';

class ProfileScreen04 extends StatefulWidget {
  ProfileScreen04({Key? key}) : super(key: key);

  @override
  _ProfileScreen04State createState() => _ProfileScreen04State();
}

class _ProfileScreen04State extends State<ProfileScreen04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(color: Colors.black)),
        titleSpacing: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
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
    Key? key,
    required this.constraints,
    required this.index,
  }) : super(key: key);

  final BoxConstraints constraints;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: constraints.maxWidth,
          color: Colors.grey.shade200,
          padding: EdgeInsets.only(left: 16.0, top: 8, bottom: 8),
          child: Text((index == 0) ? "Friends" : "Nearby Friends"),
        ),
        ListItem(index: index)
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage('assets/images/avatar.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('item $index'),
          )
        ],
      ),
    );
  }
}
