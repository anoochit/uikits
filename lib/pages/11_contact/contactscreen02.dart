import 'package:flutter/material.dart';

class ContactScreen02 extends StatefulWidget {
  const ContactScreen02({super.key});

  @override
  State<ContactScreen02> createState() => _ContactScreen02State();
}

class _ContactScreen02State extends State<ContactScreen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box),
            onPressed: () {
              // place save function here
            },
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: constraints.maxWidth,
                  padding: const EdgeInsets.all(4.0),
                  color: Colors.grey.shade200,
                  child: const Text("Groups"),
                ),
                SizedBox(
                  height: 110,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const ListGroupItem();
                    },
                  ),
                ),
                Container(
                  width: constraints.maxWidth,
                  padding: const EdgeInsets.all(4.0),
                  color: Colors.grey.shade200,
                  child: const Text("All Friends"),
                ),
                Column(
                  children: List.generate(10, (index) {
                    return const ListItem();
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

class ListGroupItem extends StatelessWidget {
  const ListGroupItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(4.0),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
            child: const Text(
              "Group Name",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
            child: const Text(
              "Information",
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(4.0),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                child: const Text(
                  "Display Name",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                child: const Text(
                  "Information",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
