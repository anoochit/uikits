import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactScreen03 extends StatefulWidget {
  const ContactScreen03({super.key});

  @override
  State<ContactScreen03> createState() => _ContactScreen03State();
}

class _ContactScreen03State extends State<ContactScreen03> {
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
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Search',
                        prefixIcon:
                            Icon(FontAwesomeIcons.magnifyingGlass, size: 20),
                        border: InputBorder.none,
                      ),
                      onFieldSubmitted: (value) {
                        // place submit function here
                      },
                    ),
                  ),
                ),
                Column(
                  children: List.generate(20, (index) => const ListItem()),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/avatar.png'),
      ),
      title: const Text(
        "Display Name",
      ),
      subtitle: const Text(
        "Information",
      ),
      trailing: ElevatedButton(onPressed: () {}, child: const Text('Follow')),
    );
  }
}
