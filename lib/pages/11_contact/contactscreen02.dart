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
                  height: 120,
                  child: GridView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                    ),
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
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 8.0,
        ),
        Container(
          padding: const EdgeInsets.all(4.0),
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar.png'),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(2.0),
          child: Text(
            "Group Name",
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(2.0),
          child: const Text(
            "Information",
          ),
        ),
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/avatar.png'),
      ),
      title: Text(
        "Display Name",
      ),
      subtitle: Text(
        "Information",
      ),
    );
  }
}
